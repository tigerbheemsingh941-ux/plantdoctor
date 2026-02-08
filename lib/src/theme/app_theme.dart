import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color primary = Color(0xFF8A9A5B); // Sage Green
  static const Color primaryDark = Color(0xFF6E7C47);
  static const Color accent = Color(0xFFCC5500); // Burnt Orange

  static const Color backgroundLight = Color(0xFFF7F7F6); // Off-White
  static const Color backgroundDark = Color(0xFF1A1C16); // Charcoal

  static const Color surfaceLight = Colors.white;
  static const Color surfaceDark = Color(0xFF24261F);

  static const Color textLight = Color(0xFF1A1C16);
  static const Color textDark = Color(0xFFF7F7F6);

  // For glassmorphism
  static const Color surfaceGlass = Color(
    0x66FFFFFF,
  ); // White with ~40% opacity

  static const Color onboardingAccent = Color(
    0xFFA5C893,
  ); // Light Sage for dark mode text
}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      fontFamily: GoogleFonts.mPlusRounded1c().fontFamily,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        brightness: Brightness.light,
        primary: AppColors.primary,
        secondary: AppColors.accent,
        surface: AppColors.surfaceLight,
        onSurface: AppColors.textLight,
      ),
      scaffoldBackgroundColor: AppColors.backgroundLight,
      cardTheme: CardThemeData(
        color: AppColors.surfaceLight,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          elevation: 0,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primary,
          side: const BorderSide(color: AppColors.primary),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: AppColors.surfaceLight,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      ),
      textTheme:
          GoogleFonts.mPlusRounded1cTextTheme(
            ThemeData.light().textTheme,
          ).apply(
            bodyColor: AppColors.textLight,
            displayColor: AppColors.textLight,
          ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.backgroundLight,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: AppColors.textLight),
        titleTextStyle: GoogleFonts.mPlusRounded1c(
          color: AppColors.textLight,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      fontFamily: GoogleFonts.mPlusRounded1c().fontFamily,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        brightness: Brightness.dark,
        primary: AppColors.primary,
        secondary: AppColors.accent,
        surface: AppColors.surfaceDark,
        onSurface: AppColors.textDark,
      ),
      scaffoldBackgroundColor: AppColors.backgroundDark,
      cardTheme: CardThemeData(
        color: AppColors.surfaceDark,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          elevation: 0,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primary,
          side: const BorderSide(color: AppColors.primary),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: AppColors.surfaceDark,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      ),
      textTheme: GoogleFonts.mPlusRounded1cTextTheme(
        ThemeData.dark().textTheme,
      ).apply(bodyColor: AppColors.textDark, displayColor: AppColors.textDark),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.backgroundDark,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: AppColors.textDark),
        titleTextStyle: GoogleFonts.mPlusRounded1c(
          color: AppColors.textDark,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class AppShadows {
  static const List<BoxShadow> card = [
    BoxShadow(
      color: Color(0x0D000000), // Black with ~5% opacity
      blurRadius: 10,
      offset: Offset(0, 4),
    ),
  ];

  static const List<BoxShadow> floating = [
    BoxShadow(
      color: Color(0x1A000000), // Black with ~10% opacity
      blurRadius: 20,
      offset: Offset(0, 10),
    ),
  ];

  static const List<BoxShadow> button = [
    BoxShadow(
      color: Color(0x338A9A5B), // Primary color with ~20% opacity
      blurRadius: 12,
      offset: Offset(0, 4),
    ),
  ];

  static const List<BoxShadow> glass = [
    BoxShadow(
      color: Color(0x1F000000), // Black with ~12% opacity
      blurRadius: 30,
      offset: Offset(0, 8),
    ),
  ];
}
