// 3rd Party Packages
import 'package:flutter_bloc_app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// My Packages
import 'package:flutter_bloc_app/core/di/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  setup();

  runApp(MyApp());
}
