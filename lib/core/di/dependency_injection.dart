import 'package:get_it/get_it.dart';

import '../managers/index.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<LanguageManager>(LanguageManager());
}
