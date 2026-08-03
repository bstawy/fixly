import 'package:flutter/material.dart';

import '../colors/app_color_scheme.dart';
import '../typography/app_text_styles.dart';

class AppTheme {
  static final ThemeData themeData = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: const AppColorScheme(),
    textTheme: AppTextStyles(),
  );
}
