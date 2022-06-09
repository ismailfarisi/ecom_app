import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:e_store_coorgle/data/repositories/cart_repository.dart';
import 'package:e_store_coorgle/utils/auth_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../data/repositories/auth_repository.dart';
import '../../model/cart_item.dart';
import '../../model/user.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

@singleton
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc(this._authRepository, this._cartRepository)
      : super(const _UserState()) {
    on<_LogoutRequested>(_onLogoutRequested);
    on<_AuthChanged>(_onAuthChanged);
    on<_CartUpdated>(_onCartUpdated);
    add(const _AuthChanged());
    add(const _CartUpdated());
  }
  final AuthRepository _authRepository;
  final CartRepository _cartRepository;
  FutureOr<void> _onLogoutRequested(
      _LogoutRequested event, Emitter<UserState> emit) async {
    await _authRepository.logout();
    emit(state.copyWith(authState: AuthState.unauthenticated, user: null));
  }

  FutureOr<void> _onAuthChanged(
      _AuthChanged event, Emitter<UserState> emit) async {
    if (event.user != null) {
      emit(state.copyWith(user: event.user));
      return;
    }
    final result = await _authRepository.getUser();
    result.when(success: (user) {
      emit(state.copyWith(user: user, authState: AuthState.authenticated));
    }, error: (e) {
      emit(state.copyWith(authState: AuthState.unauthenticated, user: null));
    });
  }

  FutureOr<void> _onCartUpdated(
      _CartUpdated event, Emitter<UserState> emit) async {
    final result = await _cartRepository.getCart();
    result.when(
        success: (data) {
          emit(state.copyWith(cartItems: data, cartCount: data.length));
        },
        error: (e) {});
  }
}
