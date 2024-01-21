// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/ui_kit.dart';

// Project imports:
import 'package:fmr_task/src/features/main/verify_otp/cubit/verify_otp_cubit.dart';

class CountdownTimer extends StatelessWidget {
  final int total;
  const CountdownTimer({super.key, required this.total});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: context.read<VerifyOtpCubit>().timerStream,
      builder: (context, snapshot) {
        final int seconds = total;
        final int secondsRemaining = snapshot.data ?? 0;
        final double value = secondsRemaining / seconds;
        return Stack(
          alignment: AlignmentDirectional.center,
          children: [
            UiText.body1('$secondsRemaining'),
            const SizedBox(height: 16),
            CircularProgressIndicator(value: value, strokeWidth: 5),
          ],
        );
      },
    );
  }
}
