// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'core/config/router_config.dart';
import 'core/config/theme_config.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => WidgetsBinding.instance.focusManager.primaryFocus?.unfocus(),
      child: MaterialApp.router(
        themeMode: themeConfig.themeMode,
        theme: themeConfig.themeData,
        darkTheme: themeConfig.darkThemeData,
        routerConfig: routerConfig.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
