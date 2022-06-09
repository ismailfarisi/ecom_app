import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:e_store_coorgle/app/bloc/user_bloc.dart';
import 'package:e_store_coorgle/core/di.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../data/repositories/auth_repository.dart';
import '../../../utils/status.dart';

part 'register_page_state.dart';
part 'register_page_cubit.freezed.dart';

@injectable
class RegisterPageCubit extends Cubit<RegisterPageState> {
  RegisterPageCubit(this._authRepository) : super(const RegisterPageState());

  final AuthRepository _authRepository;

  Future<void> registerUser(String email, String name) async {
    emit(state.copyWith(registerStatus: Status.loading));
    final result = await _authRepository.createUser(email, name);
    result.when(success: ((data) {
      log('RegisterPageCubit: registerUser: success: $data');
      getIt<UserBloc>().add(UserEvent.authChanged(data));
      emit(state.copyWith(registerStatus: Status.success));
    }), error: (e) {
      emit(state.copyWith(
          registerStatus: Status.error, errorMessage: e.toString()));
    });
  }
}
