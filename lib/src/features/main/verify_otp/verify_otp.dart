// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/ui_kit.dart';

// Project imports:
import 'package:fmr_task/src/core/config/router_config.dart';
import 'package:fmr_task/src/core/router/main_route.dart';
import 'package:fmr_task/src/features/main/verify_otp/cubit/verify_otp_cubit.dart';
import 'widgets/count_down_timer.dart';
import 'widgets/verify_otp_number.dart';
import 'widgets/verify_otp_resend.dart';

class VerifyOtpScreen extends StatelessWidget {
  const VerifyOtpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerifyOtpCubit()..init(),
      child: BlocBuilder<VerifyOtpCubit, VerifyOtpState>(
        builder: (context, state) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const UiText.h1('קוד אימות', textAlign: TextAlign.center),
                  const UiText.body1('נא להזין את הקוד שנשלח אלייך במסרון או בהודעה קולית לטלפון הנייד שלך',
                      textAlign: TextAlign.center),
                  const VerifyOtpNumber(),
                  VerifyOtpResend(resendOtp: context.read<VerifyOtpCubit>().resendOTP),
                  CountdownTimer(total: state.timer?.total ?? 60),
                  if (state.error?.isNotEmpty == true) UiText.body1(state.error!, color: Colors.red),
                  UiButton.outline(
                    text: 'Send',
                    isDisabled: !state.isButtonEnable,
                    onTap: () => routerConfig.router.go(MainRoute.homePath),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
