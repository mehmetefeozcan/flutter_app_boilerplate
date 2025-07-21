import 'package:flutter/material.dart';
import 'package:flutter_bloc_app/core/routes/app_router.dart';
import 'package:flutter_bloc_app/l10n/app_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RootRestorationScope(
      restorationId: 'root',
      child: MaterialApp.router(
        restorationScopeId: 'root',
        routerConfig: appRouter,
        debugShowCheckedModeBanner: false,
        locale: Locale('tr', 'TR'),
        supportedLocales: AppLocalizations.supportedLocales,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
      ),
    );
  }
}
