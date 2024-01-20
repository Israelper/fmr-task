// Package imports:
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:fmr_task/src/features/main/update_phone/update_phone.dart';
import '../../features/main/home/main_home.dart';
import '../../features/main/verify_otp/verify_otp.dart';
import '../config/router_config.dart';

class MainRoute {
  static const String mainPath = '/main';
  static const String homePath = '$mainPath/homePath';
  static const String veryOtpPath = '$mainPath/verify-otp-path';
  static const String updatePhonePath = '$mainPath/update-phone';

  static List<RouteBase> routes = [
    GoRoute(
      parentNavigatorKey: rootNavigatorKey,
      path: homePath,
      builder: (context, state) => const MainHomeScreen(),
    ),
    GoRoute(
      parentNavigatorKey: rootNavigatorKey,
      path: updatePhonePath,
      builder: (context, state) => const UpdatePhoneScreen(),
    ),
    GoRoute(
      parentNavigatorKey: rootNavigatorKey,
      path: veryOtpPath,
      builder: (context, state) => const VerifyOtpScreen(),
    ),
  ];
}
