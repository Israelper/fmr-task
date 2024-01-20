// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get_it/get_it.dart';

// Project imports:
import 'src/di.dart';
import 'src/main_app.dart';

void main() async {
  GetIt locator = GetIt.I;
  locator.allowReassignment = true;
  final di = DI();
  await di.init();
  locator.registerLazySingleton<DI>(() => di);
  runApp(const MainApp());
}
