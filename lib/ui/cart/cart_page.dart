import 'package:e_store_coorgle/app/bloc/user_bloc.dart';
import 'package:e_store_coorgle/core/di.dart';
import 'package:flutter/material.dart';

import '../../widgets/cart_item_card.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartList = getIt<UserBloc>().state.cartItems;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: cartList.length,
                  itemBuilder: (context, index) {
                    return CartItemCard(
                      cartItem: cartList[index],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
