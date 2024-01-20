// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/ui_kit.dart';

// Project imports:
import 'package:fmr_task/src/core/tool/validation.dart';
import 'package:fmr_task/src/features/main/update_phone/cubit/update_phone_cubit.dart';

class PhoneField extends StatelessWidget {
  const PhoneField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdatePhoneCubit, UpdatePhoneState>(builder: (context, state) {
      return Column(
        children: <Widget>[
          UiTextField(
            hint: 'Type phone number',
            onChanged: context.read<UpdatePhoneCubit>().onChangePhoneNumber,
            validator: Validation.phone,
          ),
        ],
      );
    });
  }
}
