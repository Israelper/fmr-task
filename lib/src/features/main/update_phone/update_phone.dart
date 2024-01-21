// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/ui_kit.dart';

// Project imports:
import 'package:fmr_task/src/core/config/router_config.dart';
import 'package:fmr_task/src/core/router/main_route.dart';
import 'cubit/update_phone_cubit.dart';
import 'widgets/phone_field.dart';

class UpdatePhoneScreen extends StatelessWidget {
  const UpdatePhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UpdatePhoneCubit(),
      child: BlocBuilder<UpdatePhoneCubit, UpdatePhoneState>(
        builder: (context, state) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const PhoneField(),
                  const SizedBox(height: 20),
                  UiButton.outline(
                    text: 'Send',
                    isDisabled: !state.isEnable,
                    onTap: () => routerConfig.router.go(MainRoute.veryOtpPath),
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
