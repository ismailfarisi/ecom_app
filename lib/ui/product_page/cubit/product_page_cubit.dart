import 'package:bloc/bloc.dart';
import 'package:e_store_coorgle/app/bloc/user_bloc.dart';
import 'package:e_store_coorgle/core/di.dart';
import 'package:e_store_coorgle/data/repositories/cart_repository.dart';
import 'package:e_store_coorgle/model/cart_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../model/product.dart';
import '../../../utils/status.dart';

part 'product_page_state.dart';
part 'product_page_cubit.freezed.dart';

@injectable
class ProductPageCubit extends Cubit<ProductPageState> {
  ProductPageCubit(@factoryParam Product product, this._cartRepository)
      : super(ProductPageState(product: product));
  final CartRepository _cartRepository;

  void decrementQuantity() {
    if (state.quantiry == 1) {
      return;
    }
    emit(state.copyWith(quantiry: state.quantiry - 1));
  }

  void incrementQuantity() {
    emit(state.copyWith(quantiry: state.quantiry + 1));
  }

  Future<void> addToCart() async {
    emit(state.copyWith(addToCartStatus: Status.loading));
    final cartItem = CartItem(
        id: "",
        productId: state.product.id,
        productName: state.product.name,
        productBrand: state.product.brand,
        productPrice: state.product.price,
        quantity: state.quantiry,
        productImage: state.product.image);
    final result = await _cartRepository.addCartItem(cartItem);
    result.when(success: ((data) {
      getIt<UserBloc>().add(const UserEvent.cartUpdated());
      emit(state.copyWith(addToCartStatus: Status.success));
    }), error: (e) {
      emit(state.copyWith(addToCartStatus: Status.error));
    });
  }
}
