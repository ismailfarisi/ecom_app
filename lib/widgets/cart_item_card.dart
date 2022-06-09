import 'package:e_store_coorgle/model/cart_item.dart';
import 'package:flutter/material.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({Key? key, required this.cartItem}) : super(key: key);
  final CartItem cartItem;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(children: [
        Image.asset(
          'assets/img/${cartItem.productImage}.webp',
          height: 100,
          width: 100,
        ),
        const SizedBox(width: 10),
        Expanded(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              cartItem.productBrand ?? '',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(cartItem.productName),
            Text('\$${cartItem.productPrice}'),
          ]),
        ),
      ]),
    );
  }
}
