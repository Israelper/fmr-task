// Package imports:
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

// Project imports:
import 'package:fmr_task/src/core/tool/validation.dart';

part 'update_phone_state.dart';

class UpdatePhoneCubit extends Cubit<UpdatePhoneState> {
  UpdatePhoneCubit() : super(const UpdatePhoneState(isEnable: false));

  Future<void> onChangePhoneNumber(String phoneNumber) async {
    emit(state.copyWith(phoneNumber: phoneNumber, isEnable: phoneNumber.isPhoneValidated));
  }
}
