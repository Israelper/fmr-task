// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:ui_kit/ui_kit.dart';

class ErrorScreen extends StatelessWidget {
  final String? title;
  const ErrorScreen({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(UiSizes.xxl),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const UiText.body1('Error'),
              UiButton.primary(
                text: 'Reload',
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
