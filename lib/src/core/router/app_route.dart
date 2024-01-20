// Package imports:
import 'package:go_router/go_router.dart';

// Project imports:
import '../../features/error/error.dart';
import '../../features/next/next.dart';
import 'main_route.dart';

class AppRoute {
  static const String rootPath = '/';
  static const String nextPath = '/next';
  static const String genericErrorName = 'genericError';
  static const String _genericErrorPath = rootPath + genericErrorName;

  static List<RouteBase> routes = [
    ...MainRoute.routes,
    GoRoute(
      path: nextPath,
      builder: (context, state) => const NextScreen(),
    ),
    GoRoute(
      name: genericErrorName,
      path: _genericErrorPath,
      builder: (context, state) => const ErrorScreen(title: ''),
    ),
  ];
}
