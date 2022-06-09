part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState(
      {@Default(AuthState.unknown) AuthState authState,
      User? user,
      @Default([]) List<CartItem> cartItems,
      int? cartCount}) = _UserState;
}
