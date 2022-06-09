import 'package:e_store_coorgle/core/di.dart';
import 'package:e_store_coorgle/utils/status.dart';
import 'package:e_store_coorgle/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'cubit/home_page_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomePageCubit>(),
      child: HomePageLayout(),
    );
  }
}

class HomePageLayout extends StatefulWidget {
  const HomePageLayout({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePageLayout> createState() => _HomePageLayoutState();
}

class _HomePageLayoutState extends State<HomePageLayout> {
  @override
  void initState() {
    context.read<HomePageCubit>().getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<HomePageCubit, HomePageState>(
      builder: (context, state) {
        if (state.productFetchStatus == Status.loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state.productFetchStatus == Status.error) {
          return Center(
            child: Text(state.errorMessage!),
          );
        }
        return CustomScrollView(
          slivers: [
            const SliverAppBar(
              centerTitle: true,
              title: Text("AJIO"),
            ),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: .5),
              delegate: SliverChildBuilderDelegate((context, index) {
                return InkWell(
                    onTap: () => context.goNamed("product_page",
                        extra: state.products[index]),
                    child: ProductCard(
                      product: state.products[index],
                    ));
              }, childCount: state.products.length),
            )
          ],
        );
      },
    ));
  }
}
