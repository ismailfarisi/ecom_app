import 'package:e_store_coorgle/model/cart_item.dart';

import '../../model/product.dart';
import '../../utils/result.dart';

abstract class CartRepository {
  Future<Result<List<CartItem>>> getCart();
  Future<Result<void>> addCartItem(CartItem cartItem);
  Future<Result<CartItem>> removeCartItem(CartItem cartItem);
  Future<Result<CartItem>> clearCart();
}
