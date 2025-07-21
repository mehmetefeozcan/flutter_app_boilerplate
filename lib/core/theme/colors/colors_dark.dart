import 'package:flutter_bloc_app/core/theme/colors/colors_theme_interface.dart';
import 'dart:ui';

class DarkColors implements AppColorsBase {
  @override
  Color get primaryText => const Color(0xFFFFFFFF);
  @override
  Color get secondaryText => const Color(0xFFE0E0E0);
  @override
  Color get hintText => const Color(0xFF9E9E9E);

  @override
  Color get primaryColor => const Color(0xFF64B5F6);
  @override
  Color get primaryColorDark => const Color(0xFF42A5F5);
  @override
  Color get accentColor => const Color(0xFFFFC107);

  @override
  Color get background => const Color(0xFF121212);
  @override
  Color get cardBackground => const Color(0xFF1E1E1E);
  @override
  Color get dialogBackground => const Color(0xFF212121);

  @override
  Color get success => const Color(0xFF81C784);
  @override
  Color get getError => const Color(0xFFEF9A9A);
  @override
  Color get warning => const Color(0xFFFFEB3B);
  @override
  Color get info => const Color(0xFF90CAF9);

  @override
  Color get iconColor => const Color(0xFFE0E0E0);
  @override
  Color get dividerColor => const Color(0xFF424242);
  @override
  Color get buttonColor => primaryColor;
  @override
  Color get selectedItemColor => primaryColor;
  @override
  Color get unselectedItemColor => hintText;
}
