part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.authChanged([User? user]) = _AuthChanged;
  const factory UserEvent.logoutRequested() = _LogoutRequested;
  const factory UserEvent.cartUpdated() = _CartUpdated;
}
