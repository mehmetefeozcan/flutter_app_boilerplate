// lib/core/theme/app_colors_base.dart

import 'package:flutter/material.dart';

abstract class AppColorsBase {
  // Metin Renkleri
  Color get primaryText;
  Color get secondaryText;
  Color get hintText;

  // Ana Renkler (Marka Renkleri)
  Color get primaryColor;
  Color get primaryColorDark; // Örneğin birincil rengin daha koyu tonu
  Color get accentColor; // Vurgu rengi

  // Arkaplan Renkleri
  Color get background;
  Color get cardBackground;
  Color get dialogBackground;

  // Durum Renkleri
  Color get success;
  Color get getError;
  Color get warning;
  Color get info;

  // Özel Renkler (Uygulamanıza özgü)
  Color get iconColor;
  Color get dividerColor;
  Color get buttonColor;
  Color get selectedItemColor; // Örneğin BottomNavigationBar seçili öğe rengi
  Color get unselectedItemColor; // BottomNavigationBar seçili olmayan öğe rengi
}
