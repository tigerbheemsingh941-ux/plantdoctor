import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'src/providers/app_state.dart';
import 'src/providers/user_provider.dart';
import 'src/providers/garden_provider.dart';
import 'src/theme/app_theme.dart';
// Placeholder imports for screens - these will be created next
import 'src/screens/onboarding/onboarding_screen.dart';
import 'src/screens/home/home_screen.dart';
import 'src/services/notification_service.dart';
import 'src/providers/user_plant_provider.dart';

import 'package:camera/camera.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

late List<CameraDescription> cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  try {
    cameras = await availableCameras();
  } on CameraException catch (e) {
    debugPrint('Error initializing cameras: $e');
    cameras = [];
  }
  await NotificationService().init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppState()),
        ChangeNotifierProvider(create: (_) => UserProvider()),
        ChangeNotifierProvider(create: (_) => GardenProvider()),
        ChangeNotifierProvider(create: (_) => UserPlantProvider()),
      ],
      child: const PlantDoctorApp(),
    ),
  );
}

class PlantDoctorApp extends StatelessWidget {
  const PlantDoctorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppState>(
      builder: (context, appState, child) {
        return MaterialApp(
          title: 'Plant Doctor',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: appState.themeMode,
          home: appState.isOnboardingCompleted
              ? const HomeScreen()
              : const OnboardingScreen(),
        );
      },
    );
  }
}
