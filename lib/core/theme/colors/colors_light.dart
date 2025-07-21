import 'package:flutter_bloc_app/core/theme/colors/colors_theme_interface.dart';
import 'dart:ui';

class LightColors implements AppColorsBase {
  @override
  Color get primaryText => const Color(0xFF212121);
  @override
  Color get secondaryText => const Color(0xFF757575);
  @override
  Color get hintText => const Color(0xFFBDBDBD);

  @override
  Color get primaryColor => const Color(0xFF1976D2);
  @override
  Color get primaryColorDark => const Color(0xFF0D47A1);
  @override
  Color get accentColor => const Color(0xFFFFA000);

  @override
  Color get background => const Color(0xFFFFFFFF);
  @override
  Color get cardBackground => const Color(0xFFFAFAFA);
  @override
  Color get dialogBackground => const Color(0xFFFFFFFF);

  @override
  Color get success => const Color(0xFF4CAF50);
  @override
  Color get getError => const Color(0xFFF44336);
  @override
  Color get warning => const Color(0xFFFFC107);
  @override
  Color get info => const Color(0xFF2196F3);

  @override
  Color get iconColor => const Color(0xFF424242);
  @override
  Color get dividerColor => const Color(0xFFE0E0E0);
  @override
  Color get buttonColor => primaryColor;
  @override
  Color get selectedItemColor => primaryColor;
  @override
  Color get unselectedItemColor => secondaryText;
}
