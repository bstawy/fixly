import 'package:flutter/material.dart';

import '../constants/theme_keys.dart';

extension ContextThemeExtensions on BuildContext {
  TextTheme get textStyles => Theme.of(this).textTheme;
  ColorScheme get colors => Theme.of(this).colorScheme;
  bool get isDarkTheme => Theme.of(this).brightness == Brightness.dark;
}

extension ThemeModeExtension on ThemeMode {
  String get name {
    switch (this) {
      case ThemeMode.light:
        return ThemeKeys.light;
      case ThemeMode.dark:
        return ThemeKeys.dark;
      case ThemeMode.system:
        return ThemeKeys.system;
    }
  }

  static ThemeMode fromString(String value) {
    switch (value) {
      case ThemeKeys.light:
        return ThemeMode.light;
      case ThemeKeys.dark:
        return ThemeMode.dark;
      case ThemeKeys.system:
        return ThemeMode.system;
      default:
        throw ArgumentError('Invalid theme mode: $value');
    }
  }
}
