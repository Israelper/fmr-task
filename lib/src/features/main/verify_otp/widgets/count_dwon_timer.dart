// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/ui_kit.dart';

// Project imports:
import 'package:fmr_task/src/features/main/verify_otp/cubit/verify_otp_cubit.dart';

class CountdownTimer extends StatelessWidget {
  const CountdownTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VerifyOtpCubit, VerifyOtpState>(
      builder: (context, state) {
        final int seconds = state.timer?.count ?? 0;
        return StreamBuilder<int>(
            stream: context.read<VerifyOtpCubit>().timerStream,
            builder: (context, snapshot) {
              final int secondsRemaining = snapshot.data ?? 0;
              return Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  UiText.body1('${snapshot.data ?? 0}'),
                  const SizedBox(height: 16),
                  CircularProgressIndicator(
                    value: secondsRemaining / seconds,
                    strokeWidth: 5,
                  ),
                ],
              );
            });
      },
    );
  }
}
