import 'package:flutter_bloc_app/core/di/dependency_injection.dart';
import 'package:flutter_bloc_app/l10n/app_localizations.dart';
import 'package:flutter_bloc_app/core/routes/app_router.dart';
import 'core/managers/index.dart';
// 3rd Party Packages
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final LanguageManager langManager = getIt<LanguageManager>();
    final ThemeManager themeManager = getIt<ThemeManager>();

    return RootRestorationScope(
      restorationId: 'root',
      child: ScreenUtilInit(
        designSize: const Size(375, 667),
        minTextAdapt: true,
        builder: (context, child) => Observer(
          builder: (_) => MaterialApp.router(
            routerConfig: appRouter,
            restorationScopeId: 'root',
            debugShowCheckedModeBanner: false,
            locale: langManager.getActiveLang(),
            theme: themeManager.currentThemeData,
            supportedLocales: AppLocalizations.supportedLocales,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
          ),
        ),
      ),
    );
  }
}
