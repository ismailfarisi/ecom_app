// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) authChanged,
    required TResult Function() logoutRequested,
    required TResult Function() cartUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User? user)? authChanged,
    TResult Function()? logoutRequested,
    TResult Function()? cartUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? authChanged,
    TResult Function()? logoutRequested,
    TResult Function()? cartUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthChanged value) authChanged,
    required TResult Function(_LogoutRequested value) logoutRequested,
    required TResult Function(_CartUpdated value) cartUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthChanged value)? authChanged,
    TResult Function(_LogoutRequested value)? logoutRequested,
    TResult Function(_CartUpdated value)? cartUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthChanged value)? authChanged,
    TResult Function(_LogoutRequested value)? logoutRequested,
    TResult Function(_CartUpdated value)? cartUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res> implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  final UserEvent _value;
  // ignore: unused_field
  final $Res Function(UserEvent) _then;
}

/// @nodoc
abstract class _$$_AuthChangedCopyWith<$Res> {
  factory _$$_AuthChangedCopyWith(
          _$_AuthChanged value, $Res Function(_$_AuthChanged) then) =
      __$$_AuthChangedCopyWithImpl<$Res>;
  $Res call({User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_AuthChangedCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$$_AuthChangedCopyWith<$Res> {
  __$$_AuthChangedCopyWithImpl(
      _$_AuthChanged _value, $Res Function(_$_AuthChanged) _then)
      : super(_value, (v) => _then(v as _$_AuthChanged));

  @override
  _$_AuthChanged get _value => super._value as _$_AuthChanged;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_AuthChanged(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_AuthChanged implements _AuthChanged {
  const _$_AuthChanged([this.user]);

  @override
  final User? user;

  @override
  String toString() {
    return 'UserEvent.authChanged(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthChanged &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_AuthChangedCopyWith<_$_AuthChanged> get copyWith =>
      __$$_AuthChangedCopyWithImpl<_$_AuthChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) authChanged,
    required TResult Function() logoutRequested,
    required TResult Function() cartUpdated,
  }) {
    return authChanged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User? user)? authChanged,
    TResult Function()? logoutRequested,
    TResult Function()? cartUpdated,
  }) {
    return authChanged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? authChanged,
    TResult Function()? logoutRequested,
    TResult Function()? cartUpdated,
    required TResult orElse(),
  }) {
    if (authChanged != null) {
      return authChanged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthChanged value) authChanged,
    required TResult Function(_LogoutRequested value) logoutRequested,
    required TResult Function(_CartUpdated value) cartUpdated,
  }) {
    return authChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthChanged value)? authChanged,
    TResult Function(_LogoutRequested value)? logoutRequested,
    TResult Function(_CartUpdated value)? cartUpdated,
  }) {
    return authChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthChanged value)? authChanged,
    TResult Function(_LogoutRequested value)? logoutRequested,
    TResult Function(_CartUpdated value)? cartUpdated,
    required TResult orElse(),
  }) {
    if (authChanged != null) {
      return authChanged(this);
    }
    return orElse();
  }
}

abstract class _AuthChanged implements UserEvent {
  const factory _AuthChanged([final User? user]) = _$_AuthChanged;

  User? get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AuthChangedCopyWith<_$_AuthChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogoutRequestedCopyWith<$Res> {
  factory _$$_LogoutRequestedCopyWith(
          _$_LogoutRequested value, $Res Function(_$_LogoutRequested) then) =
      __$$_LogoutRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutRequestedCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements _$$_LogoutRequestedCopyWith<$Res> {
  __$$_LogoutRequestedCopyWithImpl(
      _$_LogoutRequested _value, $Res Function(_$_LogoutRequested) _then)
      : super(_value, (v) => _then(v as _$_LogoutRequested));

  @override
  _$_LogoutRequested get _value => super._value as _$_LogoutRequested;
}

/// @nodoc

class _$_LogoutRequested implements _LogoutRequested {
  const _$_LogoutRequested();

  @override
  String toString() {
    return 'UserEvent.logoutRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LogoutRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) authChanged,
    required TResult Function() logoutRequested,
    required TResult Function() cartUpdated,
  }) {
    return logoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User? user)? authChanged,
    TResult Function()? logoutRequested,
    TResult Function()? cartUpdated,
  }) {
    return logoutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? authChanged,
    TResult Function()? logoutRequested,
    TResult Function()? cartUpdated,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthChanged value) authChanged,
    required TResult Function(_LogoutRequested value) logoutRequested,
    required TResult Function(_CartUpdated value) cartUpdated,
  }) {
    return logoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthChanged value)? authChanged,
    TResult Function(_LogoutRequested value)? logoutRequested,
    TResult Function(_CartUpdated value)? cartUpdated,
  }) {
    return logoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthChanged value)? authChanged,
    TResult Function(_LogoutRequested value)? logoutRequested,
    TResult Function(_CartUpdated value)? cartUpdated,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested(this);
    }
    return orElse();
  }
}

abstract class _LogoutRequested implements UserEvent {
  const factory _LogoutRequested() = _$_LogoutRequested;
}

/// @nodoc
abstract class _$$_CartUpdatedCopyWith<$Res> {
  factory _$$_CartUpdatedCopyWith(
          _$_CartUpdated value, $Res Function(_$_CartUpdated) then) =
      __$$_CartUpdatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CartUpdatedCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$$_CartUpdatedCopyWith<$Res> {
  __$$_CartUpdatedCopyWithImpl(
      _$_CartUpdated _value, $Res Function(_$_CartUpdated) _then)
      : super(_value, (v) => _then(v as _$_CartUpdated));

  @override
  _$_CartUpdated get _value => super._value as _$_CartUpdated;
}

/// @nodoc

class _$_CartUpdated implements _CartUpdated {
  const _$_CartUpdated();

  @override
  String toString() {
    return 'UserEvent.cartUpdated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CartUpdated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) authChanged,
    required TResult Function() logoutRequested,
    required TResult Function() cartUpdated,
  }) {
    return cartUpdated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User? user)? authChanged,
    TResult Function()? logoutRequested,
    TResult Function()? cartUpdated,
  }) {
    return cartUpdated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? authChanged,
    TResult Function()? logoutRequested,
    TResult Function()? cartUpdated,
    required TResult orElse(),
  }) {
    if (cartUpdated != null) {
      return cartUpdated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthChanged value) authChanged,
    required TResult Function(_LogoutRequested value) logoutRequested,
    required TResult Function(_CartUpdated value) cartUpdated,
  }) {
    return cartUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthChanged value)? authChanged,
    TResult Function(_LogoutRequested value)? logoutRequested,
    TResult Function(_CartUpdated value)? cartUpdated,
  }) {
    return cartUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthChanged value)? authChanged,
    TResult Function(_LogoutRequested value)? logoutRequested,
    TResult Function(_CartUpdated value)? cartUpdated,
    required TResult orElse(),
  }) {
    if (cartUpdated != null) {
      return cartUpdated(this);
    }
    return orElse();
  }
}

abstract class _CartUpdated implements UserEvent {
  const factory _CartUpdated() = _$_CartUpdated;
}

/// @nodoc
mixin _$UserState {
  AuthState get authState => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  List<CartItem> get cartItems => throw _privateConstructorUsedError;
  int? get cartCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
  $Res call(
      {AuthState authState,
      User? user,
      List<CartItem> cartItems,
      int? cartCount});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;

  @override
  $Res call({
    Object? authState = freezed,
    Object? user = freezed,
    Object? cartItems = freezed,
    Object? cartCount = freezed,
  }) {
    return _then(_value.copyWith(
      authState: authState == freezed
          ? _value.authState
          : authState // ignore: cast_nullable_to_non_nullable
              as AuthState,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      cartItems: cartItems == freezed
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
      cartCount: cartCount == freezed
          ? _value.cartCount
          : cartCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$$_UserStateCopyWith(
          _$_UserState value, $Res Function(_$_UserState) then) =
      __$$_UserStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {AuthState authState,
      User? user,
      List<CartItem> cartItems,
      int? cartCount});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_UserStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$$_UserStateCopyWith<$Res> {
  __$$_UserStateCopyWithImpl(
      _$_UserState _value, $Res Function(_$_UserState) _then)
      : super(_value, (v) => _then(v as _$_UserState));

  @override
  _$_UserState get _value => super._value as _$_UserState;

  @override
  $Res call({
    Object? authState = freezed,
    Object? user = freezed,
    Object? cartItems = freezed,
    Object? cartCount = freezed,
  }) {
    return _then(_$_UserState(
      authState: authState == freezed
          ? _value.authState
          : authState // ignore: cast_nullable_to_non_nullable
              as AuthState,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      cartItems: cartItems == freezed
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
      cartCount: cartCount == freezed
          ? _value.cartCount
          : cartCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_UserState implements _UserState {
  const _$_UserState(
      {this.authState = AuthState.unknown,
      this.user,
      final List<CartItem> cartItems = const [],
      this.cartCount})
      : _cartItems = cartItems;

  @override
  @JsonKey()
  final AuthState authState;
  @override
  final User? user;
  final List<CartItem> _cartItems;
  @override
  @JsonKey()
  List<CartItem> get cartItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartItems);
  }

  @override
  final int? cartCount;

  @override
  String toString() {
    return 'UserState(authState: $authState, user: $user, cartItems: $cartItems, cartCount: $cartCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserState &&
            const DeepCollectionEquality().equals(other.authState, authState) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems) &&
            const DeepCollectionEquality().equals(other.cartCount, cartCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(authState),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(_cartItems),
      const DeepCollectionEquality().hash(cartCount));

  @JsonKey(ignore: true)
  @override
  _$$_UserStateCopyWith<_$_UserState> get copyWith =>
      __$$_UserStateCopyWithImpl<_$_UserState>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState(
      {final AuthState authState,
      final User? user,
      final List<CartItem> cartItems,
      final int? cartCount}) = _$_UserState;

  @override
  AuthState get authState => throw _privateConstructorUsedError;
  @override
  User? get user => throw _privateConstructorUsedError;
  @override
  List<CartItem> get cartItems => throw _privateConstructorUsedError;
  @override
  int? get cartCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserStateCopyWith<_$_UserState> get copyWith =>
      throw _privateConstructorUsedError;
}
