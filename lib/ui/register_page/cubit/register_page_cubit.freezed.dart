// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterPageState {
  Status get registerStatus => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterPageStateCopyWith<RegisterPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterPageStateCopyWith<$Res> {
  factory $RegisterPageStateCopyWith(
          RegisterPageState value, $Res Function(RegisterPageState) then) =
      _$RegisterPageStateCopyWithImpl<$Res>;
  $Res call({Status registerStatus, String? errorMessage});
}

/// @nodoc
class _$RegisterPageStateCopyWithImpl<$Res>
    implements $RegisterPageStateCopyWith<$Res> {
  _$RegisterPageStateCopyWithImpl(this._value, this._then);

  final RegisterPageState _value;
  // ignore: unused_field
  final $Res Function(RegisterPageState) _then;

  @override
  $Res call({
    Object? registerStatus = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      registerStatus: registerStatus == freezed
          ? _value.registerStatus
          : registerStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_RegisterPageStateCopyWith<$Res>
    implements $RegisterPageStateCopyWith<$Res> {
  factory _$$_RegisterPageStateCopyWith(_$_RegisterPageState value,
          $Res Function(_$_RegisterPageState) then) =
      __$$_RegisterPageStateCopyWithImpl<$Res>;
  @override
  $Res call({Status registerStatus, String? errorMessage});
}

/// @nodoc
class __$$_RegisterPageStateCopyWithImpl<$Res>
    extends _$RegisterPageStateCopyWithImpl<$Res>
    implements _$$_RegisterPageStateCopyWith<$Res> {
  __$$_RegisterPageStateCopyWithImpl(
      _$_RegisterPageState _value, $Res Function(_$_RegisterPageState) _then)
      : super(_value, (v) => _then(v as _$_RegisterPageState));

  @override
  _$_RegisterPageState get _value => super._value as _$_RegisterPageState;

  @override
  $Res call({
    Object? registerStatus = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_RegisterPageState(
      registerStatus: registerStatus == freezed
          ? _value.registerStatus
          : registerStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RegisterPageState implements _RegisterPageState {
  const _$_RegisterPageState(
      {this.registerStatus = Status.init, this.errorMessage});

  @override
  @JsonKey()
  final Status registerStatus;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'RegisterPageState(registerStatus: $registerStatus, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterPageState &&
            const DeepCollectionEquality()
                .equals(other.registerStatus, registerStatus) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(registerStatus),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_RegisterPageStateCopyWith<_$_RegisterPageState> get copyWith =>
      __$$_RegisterPageStateCopyWithImpl<_$_RegisterPageState>(
          this, _$identity);
}

abstract class _RegisterPageState implements RegisterPageState {
  const factory _RegisterPageState(
      {final Status registerStatus,
      final String? errorMessage}) = _$_RegisterPageState;

  @override
  Status get registerStatus => throw _privateConstructorUsedError;
  @override
  String? get errorMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterPageStateCopyWith<_$_RegisterPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
