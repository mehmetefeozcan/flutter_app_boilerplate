// 3rd Party Packages
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

// My Packages
import '../constants/app_constants.dart';
import 'app_routes.dart';

// Page imports
import 'package:flutter_bloc_app/features/home/view/home_view.dart';

final GoRouter appRouter = GoRouter(
  debugLogDiagnostics: true,
  navigatorKey: AppConstants.navigatorKey,
  restorationScopeId: 'root',
  initialLocation: AppRoutes.home.toPath,
  routes: [
    animatedRoute(
      path: AppRoutes.home.toPath,
      builder: (context, state) => HomeView(),
    ),
  ],
  errorBuilder: (context, state) {
    return Scaffold(body: Center(child: Text('404 - Sayfa Bulunamadı')));
  },
);

GoRoute animatedRoute({
  required String path,
  required Widget Function(BuildContext context, GoRouterState state) builder,
  List<RouteBase> routes = const <RouteBase>[],
}) {
  return GoRoute(
    path: path,
    routes: routes,
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        key: state.pageKey,
        child: builder(context, state),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
            child: child,
          );
        },
      );
    },
  );
}
