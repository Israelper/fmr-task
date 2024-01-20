// Flutter imports:
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:ui_kit/ui_kit.dart';

class VerifyOtpResend extends StatelessWidget {
  const VerifyOtpResend({super.key, this.resendOtp});
  final VoidCallback? resendOtp;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text.rich(
          TextSpan(
            children: <InlineSpan>[
              TextSpan(text: 'Resend', style: UiTypography.body1.toTextStyle(context)),
              TextSpan(
                text: 'Send again',
                style: UiTypography.body1
                    .toTextStyle(context)
                    ?.copyWith(decoration: TextDecoration.underline, color: UiColors.primary500),
                recognizer: TapGestureRecognizer()..onTap = resendOtp,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
