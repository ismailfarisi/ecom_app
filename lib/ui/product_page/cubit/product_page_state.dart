part of 'product_page_cubit.dart';

@freezed
class ProductPageState with _$ProductPageState {
  const factory ProductPageState({
    required Product product,
    @Default(1) int quantiry,
    @Default(Status.init) Status addToCartStatus,
  }) = _ProductPageState;
}
