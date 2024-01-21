// Dart imports:
import 'dart:async';

// Package imports:
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

// Project imports:
import 'package:fmr_task/src/core/tool/timer_notifier.dart';

part 'verify_otp_state.dart';

class VerifyOtpCubit extends Cubit<VerifyOtpState> {
  VerifyOtpCubit() : super(const VerifyOtpState());

  final StreamController<int> _timerStreamController = StreamController<int>();
  Stream<int> get timerStream => _timerStreamController.stream;

  void init() {
    emit(state.copyWith(
        timer: TimerNotifier((int val) {
      _timerStreamController.sink.add(val);
      _validation();
    })
          ..startTimer()));
  }

  Future<void> onChangeCode(String code) async {
    const String password = '123456';
    final bool isCompleted = code.length == 6;
    final bool invalidCode = isCompleted && code != password;
    emit(state.copyWith(code: code, error: invalidCode ? 'Invalid code' : ''));
    _validation();
  }

  Future<void> resendOTP() async {
    if (state.timer?.isActive == true) {
      return;
    }
    state.timer?.startTimer();
  }

  void _validation() {
    final bool isTimeActive = state.timer?.isActive == true;
    final bool isCompleted = state.code.length == 6;
    emit(state.copyWith(isButtonEnable: isTimeActive && isCompleted));
  }

  @override
  Future<void> close() {
    _timerStreamController.close();
    return super.close();
  }
}
