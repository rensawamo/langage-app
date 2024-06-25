import '../data/app_route_data.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'routes.dart';

/// アプリ全体の 宣言的なルーティングを提供するProvider
final routerProvider = Provider((ref) {
  return GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: Routes.top,
    debugLogDiagnostics: kDebugMode,
    routes: $appRoutes,
    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: ErrorWidget(
        Exception('Route for ${state.uri} not found'),
      ),
    ),
    redirect: (context, state) {
      return null;
    },
  );
});