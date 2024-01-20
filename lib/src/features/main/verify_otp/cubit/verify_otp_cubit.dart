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
    _onCodeSent();
  }

  Future<void> onChangeCode(String code) async {
    const String password = '123456';
    final bool isCompleted = code.length == 6;
    final bool invalidCode = isCompleted && code != password;
    final bool isCodeCorrect = isCompleted && code == password;
    emit(state.copyWith(code: code, error: invalidCode ? 'Invalid code' : '', isCompleted: isCodeCorrect));
  }

  Future<void> resendOTP() async {
    if (state.timer?.isActive == true) {
      return;
    }
    _onCodeSent();
  }

  void _onCodeSent() async {
    emit(state.copyWith(timer: TimerNotifier(_timerStreamController.sink.add)..startTimer()));
  }

  @override
  Future<void> close() {
    _timerStreamController.close();
    return super.close();
  }
}
