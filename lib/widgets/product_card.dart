import 'package:flutter/material.dart';

import '../model/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 350,
        child: Column(
          children: [
            Image.asset(
              'assets/img/${product.image}.webp',
              height: 250,
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                product.brand ?? '',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                product.name,
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                '\$${product.price}',
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            if (product.offerPrice != null)
              Text('offer Price: \$${product.offerPrice}',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      ?.copyWith(color: Colors.green)),
          ],
        ));
  }
}
