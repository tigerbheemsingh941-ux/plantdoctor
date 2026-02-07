import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../services/notification_service.dart';

class AppState extends ChangeNotifier with WidgetsBindingObserver {
  bool _isOnboardingCompleted = false;
  ThemeMode _themeMode = ThemeMode.dark;
  bool _isWateringReminderEnabled = false;
  TimeOfDay _wateringReminderTime = const TimeOfDay(hour: 8, minute: 0);

  bool get isOnboardingCompleted => _isOnboardingCompleted;
  ThemeMode get themeMode => _themeMode;
  bool get isWateringReminderEnabled => _isWateringReminderEnabled;
  TimeOfDay get wateringReminderTime => _wateringReminderTime;

  AppState() {
    WidgetsBinding.instance.addObserver(this);
    _loadFromPrefs();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _checkTimezoneAndUpdate();
    }
  }

  Future<void> _checkTimezoneAndUpdate() async {
    final bool timezoneChanged = await NotificationService().updateTimezone();
    if (timezoneChanged && _isWateringReminderEnabled) {
      debugPrint('Rescheduling notifications due to timezone change');
      await NotificationService().cancelNotifications();
      await NotificationService().scheduleDailyNotification(
        _wateringReminderTime,
      );
    }
  }

  Future<void> _loadFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    _isOnboardingCompleted = prefs.getBool('onboarding_completed') ?? false;
    // Load theme preference if any, defaulting to dark
    final themeIndex = prefs.getInt('theme_mode');
    if (themeIndex != null) {
      _themeMode = ThemeMode.values[themeIndex];
    }
    _isWateringReminderEnabled =
        prefs.getBool('watering_reminder_enabled') ?? false;

    final hour = prefs.getInt('watering_time_hour') ?? 8;
    final minute = prefs.getInt('watering_time_minute') ?? 0;
    _wateringReminderTime = TimeOfDay(hour: hour, minute: minute);

    if (_isWateringReminderEnabled) {
      // Ensure timezone is up-to-date before scheduling
      await NotificationService().updateTimezone();
      await NotificationService().requestPermissions();
      await NotificationService().scheduleDailyNotification(
        _wateringReminderTime,
      );
    }

    notifyListeners();
  }

  Future<void> completeOnboarding() async {
    _isOnboardingCompleted = true;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onboarding_completed', true);
    notifyListeners();
  }

  Future<void> toggleTheme(bool isDark) async {
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('theme_mode', _themeMode.index);
    notifyListeners();
  }

  Future<void> toggleWateringReminder(bool isEnabled) async {
    _isWateringReminderEnabled = isEnabled;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('watering_reminder_enabled', isEnabled);

    if (isEnabled) {
      await NotificationService().requestPermissions();
      await NotificationService().scheduleDailyNotification(
        _wateringReminderTime,
      );
    } else {
      await NotificationService().cancelNotifications();
    }
    notifyListeners();
  }

  Future<void> updateWateringReminderTime(TimeOfDay newTime) async {
    _wateringReminderTime = newTime;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('watering_time_hour', newTime.hour);
    await prefs.setInt('watering_time_minute', newTime.minute);

    if (_isWateringReminderEnabled) {
      // Reschedule with new time
      await NotificationService().cancelNotifications();
      await NotificationService().scheduleDailyNotification(newTime);
    }
    notifyListeners();
  }
}
