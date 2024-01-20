// Flutter imports:
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const UiText.body1('Home'),
      ),
    );
  }
}
