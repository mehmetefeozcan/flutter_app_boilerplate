import 'package:flutter/material.dart';
import 'package:flutter_bloc_app/core/routes/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RootRestorationScope(
      restorationId: 'root',
      child: MaterialApp.router(
        restorationScopeId: 'root',
        debugShowCheckedModeBanner: false,
        routerConfig: appRouter,
      ),
    );
  }
}
