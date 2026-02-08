import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest_all.dart' as tz;

class NotificationService {
  static final NotificationService _instance = NotificationService._internal();

  factory NotificationService() {
    return _instance;
  }

  NotificationService._internal();

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> init() async {
    tz.initializeTimeZones();
    final String timeZoneName = await FlutterTimezone.getLocalTimezone();
    tz.setLocalLocation(tz.getLocation(timeZoneName));

    // Android initialization
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    // iOS initialization (Darwin)
    const DarwinInitializationSettings initializationSettingsDarwin =
        DarwinInitializationSettings(
          requestAlertPermission: false,
          requestBadgePermission: false,
          requestSoundPermission: false,
        );

    const InitializationSettings initializationSettings =
        InitializationSettings(
          android: initializationSettingsAndroid,
          iOS: initializationSettingsDarwin,
        );

    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse:
          (NotificationResponse notificationResponse) {
            // Handle notification tap
          },
    );
    debugPrint(
      'NotificationService initialized with timezone: ${tz.local.name}',
    );
  }

  String get currentLocalTimezone => tz.local.name;

  /// Checks if the device timezone has changed and updates the local timezone definition.
  /// Returns [true] if the timezone was updated, [false] otherwise.
  Future<bool> updateTimezone() async {
    try {
      final String timeZoneName = await FlutterTimezone.getLocalTimezone();
      if (timeZoneName != currentLocalTimezone) {
        debugPrint(
          'Timezone changed from $currentLocalTimezone to $timeZoneName',
        );
        tz.setLocalLocation(tz.getLocation(timeZoneName));
        return true;
      }
    } catch (e) {
      debugPrint('Error updating timezone: $e');
    }
    return false;
  }

  Future<bool> requestPermissions() async {
    try {
      final AndroidFlutterLocalNotificationsPlugin? androidImplementation =
          flutterLocalNotificationsPlugin
              .resolvePlatformSpecificImplementation<
                AndroidFlutterLocalNotificationsPlugin
              >();

      if (androidImplementation == null) {
        debugPrint('Android implementation not available');
        return false;
      }

      // Request notification permission
      final bool? notificationPermission = await androidImplementation
          .requestNotificationsPermission();
      debugPrint('Notification permission granted: $notificationPermission');

      // Request exact alarm permission
      final bool? exactAlarmPermission = await androidImplementation
          .requestExactAlarmsPermission();
      debugPrint('Exact alarm permission granted: $exactAlarmPermission');

      final bool permissionsGranted =
          (notificationPermission ?? false) && (exactAlarmPermission ?? false);

      debugPrint('All permissions granted: $permissionsGranted');
      return permissionsGranted;
    } catch (e) {
      debugPrint('Error requesting permissions: $e');
      return false;
    }
  }

  Future<bool> scheduleDailyNotification(TimeOfDay time) async {
    try {
      // Verify timezone is initialized
      if (tz.local.name.isEmpty) {
        debugPrint('Timezone not initialized, initializing now...');
        await updateTimezone();
      }

      final tz.TZDateTime scheduledTime = _nextInstanceOfTime(time);
      final tz.TZDateTime now = tz.TZDateTime.now(tz.local);

      debugPrint('Current time: $now');
      debugPrint('Scheduling daily notification for: $scheduledTime');
      debugPrint('Timezone: ${tz.local.name}');

      await flutterLocalNotificationsPlugin.zonedSchedule(
        0,
        'Watering Reminder',
        'Time to check your garden! 🌿',
        scheduledTime,
        const NotificationDetails(
          android: AndroidNotificationDetails(
            'watering_channel_v3',
            'Watering Reminders',
            channelDescription: 'Daily reminders to check your plants',
            importance: Importance.max,
            priority: Priority.high,
            playSound: true,
            enableVibration: true,
          ),
          iOS: DarwinNotificationDetails(),
        ),
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        matchDateTimeComponents: DateTimeComponents.time,
      );

      debugPrint(
        '✓ Daily notification scheduled successfully at $scheduledTime',
      );
      return true;
    } catch (e) {
      debugPrint('✗ Error scheduling daily notification: $e');
      return false;
    }
  }

  Future<void> schedulePlantWatering(
    String id,
    String plantName,
    DateTime scheduledDate,
  ) async {
    try {
      // Ensure timezone is initialized
      if (tz.local.name.isEmpty) {
        debugPrint('Timezone not initialized, initializing now...');
        await updateTimezone();
      }

      // Use hash of ID for notification ID (needs int)
      final int notificationId = id.hashCode;

      // Create TZDateTime in the device's local timezone using date components
      // This ensures the notification fires at the correct local time
      final tz.TZDateTime tzDate = tz.TZDateTime(
        tz.local,
        scheduledDate.year,
        scheduledDate.month,
        scheduledDate.day,
        scheduledDate.hour,
        scheduledDate.minute,
        scheduledDate.second,
      );

      final tz.TZDateTime now = tz.TZDateTime.now(tz.local);

      // Don't schedule if in the past
      if (tzDate.isBefore(now)) {
        debugPrint(
          'Skipping past notification for $plantName (scheduled: $tzDate, now: $now)',
        );
        return;
      }

      debugPrint('Current device time: $now');
      debugPrint('Scheduling notification for $plantName at: $tzDate');
      debugPrint('Device timezone: ${tz.local.name}');

      await flutterLocalNotificationsPlugin.zonedSchedule(
        notificationId,
        'Watering Time! 💧',
        'It\'s time to water your $plantName!',
        tzDate,
        const NotificationDetails(
          android: AndroidNotificationDetails(
            'plant_watering_channel',
            'Plant Care',
            channelDescription: 'Specific watering reminders for each plant',
            importance: Importance.max,
            priority: Priority.high,
            playSound: true,
            enableVibration: true,
          ),
          iOS: DarwinNotificationDetails(),
        ),
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
      );

      debugPrint('✓ Notification scheduled successfully for $plantName');

      // Log pending notifications for debugging
      await logPendingNotifications();
    } catch (e) {
      debugPrint('✗ Error scheduling plant notification: $e');
    }
  }

  Future<void> schedulePlantFertilizing(
    String id,
    String plantName,
    DateTime scheduledDate,
  ) async {
    try {
      // Ensure timezone is initialized
      if (tz.local.name.isEmpty) {
        debugPrint('Timezone not initialized, initializing now...');
        await updateTimezone();
      }

      // Use hash of ID + type for notification ID
      final int notificationId = '${id}_fertilizing'.hashCode;

      // Create TZDateTime in the device's local timezone
      final tz.TZDateTime tzDate = tz.TZDateTime(
        tz.local,
        scheduledDate.year,
        scheduledDate.month,
        scheduledDate.day,
        scheduledDate.hour,
        scheduledDate.minute,
        scheduledDate.second,
      );

      final tz.TZDateTime now = tz.TZDateTime.now(tz.local);

      // Don't schedule if in the past
      if (tzDate.isBefore(now)) {
        debugPrint(
          'Skipping past fertilizing notification for $plantName (scheduled: $tzDate, now: $now)',
        );
        return;
      }

      debugPrint(
        'Scheduling fertilizing notification for $plantName at: $tzDate',
      );

      await flutterLocalNotificationsPlugin.zonedSchedule(
        notificationId,
        'Fertilizing Time! 🌱',
        'It\'s time to fertilize your $plantName!',
        tzDate,
        const NotificationDetails(
          android: AndroidNotificationDetails(
            'plant_fertilizing_channel',
            'Plant Fertilizing',
            channelDescription: 'Fertilizing reminders for your plants',
            importance: Importance.max,
            priority: Priority.high,
            playSound: true,
            enableVibration: true,
          ),
          iOS: DarwinNotificationDetails(),
        ),
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
      );

      debugPrint('✓ Fertilizing notification scheduled for $plantName');
    } catch (e) {
      debugPrint('✗ Error scheduling fertilizing notification: $e');
    }
  }

  Future<void> schedulePlantPruning(
    String id,
    String plantName,
    DateTime scheduledDate,
  ) async {
    try {
      // Ensure timezone is initialized
      if (tz.local.name.isEmpty) {
        debugPrint('Timezone not initialized, initializing now...');
        await updateTimezone();
      }

      // Use hash of ID + type for notification ID
      final int notificationId = '${id}_pruning'.hashCode;

      // Create TZDateTime in the device's local timezone
      final tz.TZDateTime tzDate = tz.TZDateTime(
        tz.local,
        scheduledDate.year,
        scheduledDate.month,
        scheduledDate.day,
        scheduledDate.hour,
        scheduledDate.minute,
        scheduledDate.second,
      );

      final tz.TZDateTime now = tz.TZDateTime.now(tz.local);

      // Don't schedule if in the past
      if (tzDate.isBefore(now)) {
        debugPrint(
          'Skipping past pruning notification for $plantName (scheduled: $tzDate, now: $now)',
        );
        return;
      }

      debugPrint('Scheduling pruning notification for $plantName at: $tzDate');

      await flutterLocalNotificationsPlugin.zonedSchedule(
        notificationId,
        'Pruning Time! ✂️',
        'It\'s time to prune your $plantName!',
        tzDate,
        const NotificationDetails(
          android: AndroidNotificationDetails(
            'plant_pruning_channel',
            'Plant Pruning',
            channelDescription: 'Pruning reminders for your plants',
            importance: Importance.max,
            priority: Priority.high,
            playSound: true,
            enableVibration: true,
          ),
          iOS: DarwinNotificationDetails(),
        ),
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
      );

      debugPrint('✓ Pruning notification scheduled for $plantName');
    } catch (e) {
      debugPrint('✗ Error scheduling pruning notification: $e');
    }
  }

  Future<void> schedulePlantMisting(
    String id,
    String plantName,
    DateTime scheduledDate,
  ) async {
    try {
      // Ensure timezone is initialized
      if (tz.local.name.isEmpty) {
        debugPrint('Timezone not initialized, initializing now...');
        await updateTimezone();
      }

      // Use hash of ID + type for notification ID
      final int notificationId = '${id}_misting'.hashCode;

      // Create TZDateTime in the device's local timezone
      final tz.TZDateTime tzDate = tz.TZDateTime(
        tz.local,
        scheduledDate.year,
        scheduledDate.month,
        scheduledDate.day,
        scheduledDate.hour,
        scheduledDate.minute,
        scheduledDate.second,
      );

      final tz.TZDateTime now = tz.TZDateTime.now(tz.local);

      // Don't schedule if in the past
      if (tzDate.isBefore(now)) {
        debugPrint(
          'Skipping past misting notification for $plantName (scheduled: $tzDate, now: $now)',
        );
        return;
      }

      debugPrint('Scheduling misting notification for $plantName at: $tzDate');

      await flutterLocalNotificationsPlugin.zonedSchedule(
        notificationId,
        'Misting Time! 💦',
        'It\'s time to mist your $plantName!',
        tzDate,
        const NotificationDetails(
          android: AndroidNotificationDetails(
            'plant_misting_channel',
            'Plant Misting',
            channelDescription: 'Misting reminders for your plants',
            importance: Importance.max,
            priority: Priority.high,
            playSound: true,
            enableVibration: true,
          ),
          iOS: DarwinNotificationDetails(),
        ),
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
      );

      debugPrint('✓ Misting notification scheduled for $plantName');
    } catch (e) {
      debugPrint('✗ Error scheduling misting notification: $e');
    }
  }

  Future<void> cancelPlantNotification(String id) async {
    await flutterLocalNotificationsPlugin.cancel(id.hashCode);
  }

  Future<void> cancelPlantFertilizing(String id) async {
    await flutterLocalNotificationsPlugin.cancel('${id}_fertilizing'.hashCode);
  }

  Future<void> cancelPlantPruning(String id) async {
    await flutterLocalNotificationsPlugin.cancel('${id}_pruning'.hashCode);
  }

  Future<void> cancelPlantMisting(String id) async {
    await flutterLocalNotificationsPlugin.cancel('${id}_misting'.hashCode);
  }

  Future<void> cancelNotifications() async {
    await flutterLocalNotificationsPlugin.cancelAll();
  }

  Future<void> logPendingNotifications() async {
    try {
      final List<PendingNotificationRequest> pendingNotifications =
          await flutterLocalNotificationsPlugin.pendingNotificationRequests();

      debugPrint(
        '=== Pending Notifications (${pendingNotifications.length}) ===',
      );
      for (final notification in pendingNotifications) {
        debugPrint(
          'ID: ${notification.id}, Title: ${notification.title}, '
          'Body: ${notification.body}',
        );
      }
      debugPrint('==============================');
    } catch (e) {
      debugPrint('Error getting pending notifications: $e');
    }
  }

  tz.TZDateTime _nextInstanceOfTime(TimeOfDay time) {
    final tz.TZDateTime now = tz.TZDateTime.now(tz.local);
    tz.TZDateTime scheduledDate = tz.TZDateTime(
      tz.local,
      now.year,
      now.month,
      now.day,
      time.hour,
      time.minute,
    );
    if (scheduledDate.isBefore(now)) {
      scheduledDate = scheduledDate.add(const Duration(days: 1));
    }
    return scheduledDate;
  }
}
