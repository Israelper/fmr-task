// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:ui_kit/ui_kit.dart';

class _ThemeConfig {
  ThemeMode get themeMode => ThemeMode.light;

  ThemeData get themeData => ThemeData(
        primaryColor: UiColors.primary500,
        scaffoldBackgroundColor: UiColors.neutralWhite,
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: UiColors.primary500,
          onPrimary: UiColors.primary500,
          secondary: UiColors.primary500,
          onSecondary: UiColors.primary500,
          error: UiColors.primary500,
          onError: UiColors.primary500,
          background: UiColors.neutralWhite,
          onBackground: UiColors.primary500,
          surface: UiColors.neutralWhite,
          onSurface: UiColors.primary500,
        ).copyWith(background: UiColors.neutralWhite),
        fontFamily: 'Assistant',
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.w600,
            letterSpacing: -1.5,
          ),
          displayMedium: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.5,
          ),
          displaySmall: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            letterSpacing: 0,
          ),
          headlineMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            letterSpacing: 0,
          ),
          headlineSmall: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            letterSpacing: 0,
          ),
          titleLarge: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            letterSpacing: 0,
          ),
          titleMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            letterSpacing: 0,
          ),
          titleSmall: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            letterSpacing: 0,
          ),
          bodyLarge: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            letterSpacing: 0,
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            letterSpacing: 0,
          ),
          bodySmall: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w400,
            letterSpacing: 0,
          ),
          labelLarge: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            letterSpacing: 0,
          ),
          labelSmall: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            letterSpacing: 0,
          ),
        ),
      );

  ThemeData get darkThemeData => themeData;
}

final _ThemeConfig themeConfig = _ThemeConfig();
