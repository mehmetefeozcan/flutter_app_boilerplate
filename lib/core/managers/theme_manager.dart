import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../theme/colors/index.dart';

part 'theme_manager.g.dart';

class ThemeManager = _ThemeManagerBase with _$ThemeManager;

abstract class _ThemeManagerBase with Store {
  @observable
  bool isDarkMode = false;

  @computed
  AppColorsBase get colors => isDarkMode ? DarkColors() : LightColors();

  @action
  void toggleChange() {
    isDarkMode = !isDarkMode;
  }

  ThemeData get currentThemeData {
    return ThemeData(
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
      primaryColor: colors.primaryColor,
      hintColor: colors.accentColor,
      scaffoldBackgroundColor: colors.background,
      cardColor: colors.cardBackground,
      textTheme: TextTheme(
        bodyLarge: TextStyle(color: colors.primaryText),
        bodyMedium: TextStyle(color: colors.secondaryText),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: colors.primaryColor,
        foregroundColor: colors.primaryText,
      ),
      iconTheme: IconThemeData(color: colors.iconColor),
      buttonTheme: ButtonThemeData(buttonColor: colors.buttonColor),
      colorScheme: ColorScheme.fromSeed(
        seedColor: colors.primaryColor,
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
        primary: colors.primaryColor,
        onPrimary: colors.primaryText,
        secondary: colors.accentColor,
        onSecondary: colors.primaryText,
        surface: colors.cardBackground,
        onSurface: colors.primaryText,
        error: colors.getError,
        onError: Colors.white,
      ),
    );
  }
}
