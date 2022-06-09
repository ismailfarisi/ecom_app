import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:e_store_coorgle/core/di.dart';
import 'package:e_store_coorgle/data/repositories/auth_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../app/bloc/user_bloc.dart';
import '../../../utils/status.dart';

part 'login_page_state.dart';
part 'login_page_cubit.freezed.dart';

@injectable
class LoginPageCubit extends Cubit<LoginPageState> {
  LoginPageCubit(this._authRepository) : super(const LoginPageState());
  final AuthRepository _authRepository;
  Future<void> sentCode(String PhoneNo) async {
    emit(state.copyWith(loginStatus: Status.loading));
    final result = await _authRepository.login(PhoneNo);
    result.when(success: ((data) {
      if (kDebugMode) {
        print('LoginPageCubit: sentCode: success: $data');
      }
      emit(state.copyWith(codeSentStatus: Status.success));
    }), error: (e) {
      emit(state.copyWith(
          codeSentStatus: Status.error, errorMessage: e.toString()));
    });
  }

  Future<void> verifyCode(String code) async {
    emit(state.copyWith(loginStatus: Status.loading));
    final result = await _authRepository.verifyCode(code);
    result.when(success: ((data) {
      log("logged in successfully");
      if (data != null) {
        getIt<UserBloc>().add(UserEvent.authChanged(data));
        emit(state.copyWith(loginStatus: Status.success, newUser: false));
      } else {
        emit(state.copyWith(loginStatus: Status.success, newUser: true));
      }
    }), error: (e) {
      emit(state.copyWith(
          loginStatus: Status.error, errorMessage: e.toString()));
    });
  }
}
