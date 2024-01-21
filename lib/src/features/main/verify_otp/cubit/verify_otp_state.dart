part of 'verify_otp_cubit.dart';

class VerifyOtpState extends Equatable {
  const VerifyOtpState({
    this.phoneNumber,
    this.code = '',
    this.timer,
    this.error,
    this.isButtonEnable = false,
  });

  @override
  List<Object?> get props => [phoneNumber, code, timer, error, isButtonEnable];

  final String? phoneNumber;
  final String code;
  final TimerNotifier? timer;
  final String? error;
  final bool isButtonEnable;

  bool get isEnableToSend => timer?.isActive == true;

  VerifyOtpState copyWith({
    String? phoneNumber,
    String? code,
    TimerNotifier? timer,
    String? error,
    bool? isButtonEnable,
  }) {
    return VerifyOtpState(
        phoneNumber: phoneNumber ?? this.phoneNumber,
        code: code ?? this.code,
        timer: timer ?? this.timer,
        error: error ?? this.error,
        isButtonEnable: isButtonEnable ?? this.isButtonEnable);
  }
}
