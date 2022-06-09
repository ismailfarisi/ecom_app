import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_store_coorgle/data/repositories/cart_repository.dart';
import 'package:e_store_coorgle/utils/result.dart';
import 'package:e_store_coorgle/model/cart_item.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CartRepository)
class CartData implements CartRepository {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  CartData(this._firestore, this._auth);
  @override
  Future<Result<void>> addCartItem(CartItem cartItem) async {
    try {
      final doc = _firestore
          .collection('users')
          .doc(_auth.currentUser?.uid)
          .collection('cart')
          .doc();
      final lCartItem = cartItem.copyWith(id: doc.id);
      await doc.set(cartItem.toJson());
      return const Result.success(null);
    } catch (e) {
      if (kDebugMode) {
        print('cartRepository: addToCart() : $e');
      }
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<CartItem>> clearCart() {
    // TODO: implement clearCart
    throw UnimplementedError();
  }

  @override
  Future<Result<List<CartItem>>> getCart() async {
    try {
      final response = await _firestore
          .collection('users')
          .doc(_auth.currentUser?.uid)
          .collection('cart')
          .get();
      final List<CartItem> cartItems =
          response.docs.map((e) => CartItem.fromJson(e.data())).toList();
      return Result.success(cartItems);
    } catch (e) {
      if (kDebugMode) {
        print('cartRepository: getcart() : $e');
      }
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<CartItem>> removeCartItem(CartItem cartItem) {
    // TODO: implement removeCartItem
    throw UnimplementedError();
  }
}
