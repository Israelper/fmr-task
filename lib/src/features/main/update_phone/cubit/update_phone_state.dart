part of 'update_phone_cubit.dart';

class UpdatePhoneState extends Equatable {
  const UpdatePhoneState({
    this.phoneNumber,
    this.isEnable = false,
  });

  @override
  List<Object?> get props => [phoneNumber, isEnable];

  final bool isEnable;
  final String? phoneNumber;

  UpdatePhoneState copyWith({
    bool? isEnable,
    String? phoneNumber,
  }) {
    return UpdatePhoneState(
      isEnable: isEnable ?? this.isEnable,
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }
}
