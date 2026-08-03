import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../constants/theme_keys.dart';
import '../../extensions/theme_ext.dart';

class ThemeCubit extends HydratedCubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.system);

  void setTheme(ThemeMode themeMode) => emit(themeMode);

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    final String cachedString =
        json[ThemeKeys.userThemeCacheKey] ?? ThemeKeys.system;

    final ThemeMode appThemeMode = ThemeModeExtension.fromString(cachedString);

    return appThemeMode;
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    return {ThemeKeys.userThemeCacheKey: state.name};
  }
}
