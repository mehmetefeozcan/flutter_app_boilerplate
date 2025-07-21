import 'package:flutter/material.dart';

class AppConstants {
  AppConstants._();

  static final navigatorKey = GlobalKey<NavigatorState>();

  static const emailRegex =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]+$";
}
