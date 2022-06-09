// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductPageState {
  Product get product => throw _privateConstructorUsedError;
  int get quantiry => throw _privateConstructorUsedError;
  Status get addToCartStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductPageStateCopyWith<ProductPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductPageStateCopyWith<$Res> {
  factory $ProductPageStateCopyWith(
          ProductPageState value, $Res Function(ProductPageState) then) =
      _$ProductPageStateCopyWithImpl<$Res>;
  $Res call({Product product, int quantiry, Status addToCartStatus});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$ProductPageStateCopyWithImpl<$Res>
    implements $ProductPageStateCopyWith<$Res> {
  _$ProductPageStateCopyWithImpl(this._value, this._then);

  final ProductPageState _value;
  // ignore: unused_field
  final $Res Function(ProductPageState) _then;

  @override
  $Res call({
    Object? product = freezed,
    Object? quantiry = freezed,
    Object? addToCartStatus = freezed,
  }) {
    return _then(_value.copyWith(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      quantiry: quantiry == freezed
          ? _value.quantiry
          : quantiry // ignore: cast_nullable_to_non_nullable
              as int,
      addToCartStatus: addToCartStatus == freezed
          ? _value.addToCartStatus
          : addToCartStatus // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }

  @override
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProductPageStateCopyWith<$Res>
    implements $ProductPageStateCopyWith<$Res> {
  factory _$$_ProductPageStateCopyWith(
          _$_ProductPageState value, $Res Function(_$_ProductPageState) then) =
      __$$_ProductPageStateCopyWithImpl<$Res>;
  @override
  $Res call({Product product, int quantiry, Status addToCartStatus});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$_ProductPageStateCopyWithImpl<$Res>
    extends _$ProductPageStateCopyWithImpl<$Res>
    implements _$$_ProductPageStateCopyWith<$Res> {
  __$$_ProductPageStateCopyWithImpl(
      _$_ProductPageState _value, $Res Function(_$_ProductPageState) _then)
      : super(_value, (v) => _then(v as _$_ProductPageState));

  @override
  _$_ProductPageState get _value => super._value as _$_ProductPageState;

  @override
  $Res call({
    Object? product = freezed,
    Object? quantiry = freezed,
    Object? addToCartStatus = freezed,
  }) {
    return _then(_$_ProductPageState(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      quantiry: quantiry == freezed
          ? _value.quantiry
          : quantiry // ignore: cast_nullable_to_non_nullable
              as int,
      addToCartStatus: addToCartStatus == freezed
          ? _value.addToCartStatus
          : addToCartStatus // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$_ProductPageState implements _ProductPageState {
  const _$_ProductPageState(
      {required this.product,
      this.quantiry = 1,
      this.addToCartStatus = Status.init});

  @override
  final Product product;
  @override
  @JsonKey()
  final int quantiry;
  @override
  @JsonKey()
  final Status addToCartStatus;

  @override
  String toString() {
    return 'ProductPageState(product: $product, quantiry: $quantiry, addToCartStatus: $addToCartStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductPageState &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality().equals(other.quantiry, quantiry) &&
            const DeepCollectionEquality()
                .equals(other.addToCartStatus, addToCartStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(product),
      const DeepCollectionEquality().hash(quantiry),
      const DeepCollectionEquality().hash(addToCartStatus));

  @JsonKey(ignore: true)
  @override
  _$$_ProductPageStateCopyWith<_$_ProductPageState> get copyWith =>
      __$$_ProductPageStateCopyWithImpl<_$_ProductPageState>(this, _$identity);
}

abstract class _ProductPageState implements ProductPageState {
  const factory _ProductPageState(
      {required final Product product,
      final int quantiry,
      final Status addToCartStatus}) = _$_ProductPageState;

  @override
  Product get product => throw _privateConstructorUsedError;
  @override
  int get quantiry => throw _privateConstructorUsedError;
  @override
  Status get addToCartStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProductPageStateCopyWith<_$_ProductPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
