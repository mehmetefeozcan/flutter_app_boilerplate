import 'package:flutter/material.dart';

extension BuildContextExtension<T> on BuildContext {
  // Text Theme
  TextStyle? get headlineLarge => Theme.of(this).textTheme.headlineLarge;
  TextStyle? get headlineMedium => Theme.of(this).textTheme.headlineMedium;
  TextStyle? get headlineSmall => Theme.of(this).textTheme.headlineSmall;
  TextStyle? get titleLarge => Theme.of(this).textTheme.titleLarge;
  TextStyle? get titleMedium => Theme.of(this).textTheme.titleMedium;
  TextStyle? get titleSmall => Theme.of(this).textTheme.titleSmall;
  TextStyle? get labelLarge => Theme.of(this).textTheme.labelLarge;
  TextStyle? get labelMedium => Theme.of(this).textTheme.labelMedium;

  // Size & Spacing
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;

  double get spacingVerticalSmall => MediaQuery.of(this).size.height * 0.05;
  double get spacingVerticalMedium => MediaQuery.of(this).size.height * 0.1;
  double get spacingVerticalHeight => MediaQuery.of(this).size.height * 0.2;

  double get spacingHorizontalSmall => MediaQuery.of(this).size.width * 0.05;
  double get spacingHorizontalMedium => MediaQuery.of(this).size.width * 0.1;
  double get spacingHorizontalHeight => MediaQuery.of(this).size.width * 0.2;

  //
  BoxDecoration get roundedBox =>
      BoxDecoration(borderRadius: BorderRadius.circular(10));

  // Shortcuts
  void unFocusKeyboard() => FocusScope.of(this).unfocus();
  Future delay(int wait) async => await Future.delayed(Duration(seconds: wait));
}
