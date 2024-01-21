// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';
import 'package:ui_kit/ui_kit.dart';

// Project imports:
import 'package:fmr_task/src/features/main/verify_otp/cubit/verify_otp_cubit.dart';

class VerifyOtpNumber extends StatelessWidget {
  const VerifyOtpNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VerifyOtpCubit, VerifyOtpState>(
      builder: (context, state) {
        return Pinput(
            isCursorAnimationEnabled: false,
            autofocus: true,
            length: 6,
            defaultPinTheme: _defaultTheme(context),
            focusedPinTheme: _defaultTheme(context)
                .copyBorderWith(border: Border.all(color: Theme.of(context).primaryColor, width: 3)),
            onChanged: context.read<VerifyOtpCubit>().onChangeCode,
            onCompleted: context.read<VerifyOtpCubit>().onChangeCode);
      },
    );
  }

  PinTheme _defaultTheme(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return PinTheme(
      // height: boxWidth,
      width: width,
      textStyle: UiTypography.h1.toTextStyle(context),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(UiSizes.s),
        border: Border.all(color: Theme.of(context).primaryColor),
      ),
    );
  }
}
