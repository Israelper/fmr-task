// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';

// Project imports:
import '../router/app_route.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

class _RouterConfig {
  static late GoRouterState _routerState;

  GoRouter get router => _router;
  GoRouterState get routerState => _routerState;

  final GoRouter _router = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: AppRoute.nextPath,
    routes: AppRoute.routes,
  );
}

final _RouterConfig routerConfig = _RouterConfig();
