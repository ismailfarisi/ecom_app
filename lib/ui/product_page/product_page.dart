import 'package:e_store_coorgle/app/bloc/user_bloc.dart';
import 'package:e_store_coorgle/core/di.dart';
import 'package:e_store_coorgle/model/product.dart';
import 'package:e_store_coorgle/ui/product_page/cubit/product_page_cubit.dart';
import 'package:e_store_coorgle/utils/status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    final cartCount = getIt<UserBloc>().state.cartCount;
    final textTheme = Theme.of(context).textTheme;
    return BlocProvider(
      create: (context) => getIt<ProductPageCubit>(param1: product),
      child: ProductPageLayout(
          cartCount: cartCount, product: product, textTheme: textTheme),
    );
  }
}

class ProductPageLayout extends StatelessWidget {
  const ProductPageLayout({
    Key? key,
    required this.cartCount,
    required this.product,
    required this.textTheme,
  }) : super(key: key);

  final int? cartCount;
  final Product product;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          actions: [
            Stack(children: [
              IconButton(
                  onPressed: () {
                    context.pushNamed('cart');
                  },
                  icon: const Icon(
                    Icons.shopping_bag_outlined,
                    size: 30,
                  )),
              if (cartCount != null && cartCount != 0)
                Positioned(
                    top: 5,
                    right: 5,
                    child: Container(
                      height: 20,
                      width: 20,
                      child: Center(
                        child: Text(
                          cartCount.toString(),
                          style: const TextStyle(
                              fontSize: 10, color: Colors.white),
                        ),
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ))
            ])
          ],
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          Image.asset(
            'assets/img/${product.image}.webp',
            height: 400,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              product.brand ?? '',
              style: textTheme.subtitle1?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              product.brand ?? '',
              style: textTheme.bodyText1,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              product.price.toString(),
              style: textTheme.subtitle2?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 200,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    margin: EdgeInsets.zero,
                    color: Colors.black,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 4),
                              child: Icon(
                                Icons.remove,
                                size: 20,
                                color: Colors.white,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4),
                          child: Text(" ${1.toString()}",
                              style: textTheme.subtitle2?.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white)),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 4),
                            child: Icon(
                              Icons.add,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  BlocSelector<ProductPageCubit, ProductPageState, Status>(
                    selector: (state) {
                      return state.addToCartStatus;
                    },
                    builder: (context, state) {
                      return ElevatedButton(
                          onPressed: () {
                            context.read<ProductPageCubit>().addToCart();
                          },
                          child: (state == Status.loading)
                              ? const SizedBox.square(
                                  dimension: 24,
                                  child: Center(
                                    child: CircularProgressIndicator(
                                      strokeWidth: 3,
                                    ),
                                  ),
                                )
                              : const Text("Add To Cart"));
                    },
                  )
                ],
              ),
            ),
          )
        ]))
      ]),
    );
  }
}
