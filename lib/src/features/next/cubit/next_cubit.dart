// ignore_for_file: use_build_context_synchronously

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import '../../../core/config/router_config.dart';
import '../../../core/router/main_route.dart';

part 'next_state.dart';

class NextCubit extends Cubit<NextState> {
  NextCubit() : super(const NextState(false));

  Future<void> init(BuildContext context) async {
    /// 1. Check if your app is last version
    /// 2. Check if you have internet
    /// 3. Check if user Blocked

    await Future.delayed(const Duration(seconds: 2));
    routerConfig.router.go(MainRoute.updatePhonePath);
  }

  @override
  Future<void> close() {
    print('next close');
    return super.close();
  }
}
