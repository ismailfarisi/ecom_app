import 'package:e_store_coorgle/app/bloc/user_bloc.dart';
import 'package:e_store_coorgle/ui/cart/cart_page.dart';
import 'package:e_store_coorgle/ui/login_page/login_page.dart';
import 'package:e_store_coorgle/ui/product_page/product_page.dart';
import 'package:e_store_coorgle/ui/profile_page/profile_page.dart';
import 'package:e_store_coorgle/ui/register_page/register_page.dart';
import 'package:e_store_coorgle/widgets/bottom_navigation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

import '../model/product.dart';
import '../ui/home_page/home_page.dart';

@singleton
class AppRouter {
  final UserBloc _userBloc;
  static String lastRoute = '/';
  AppRouter(this._userBloc);
  GoRouter goRouter() => GoRouter(
        refreshListenable: GoRouterRefreshStream(_userBloc.stream),
        navigatorBuilder: (context, state, child) {
          if (kDebugMode) {
            print('================navigatorBuilder================');
            print('currentRoute: ${state.subloc}');
            print('lastRoute: $lastRoute');
          }
          if (state.subloc != '/login' && state.subloc != '/register') {
            lastRoute = state.subloc;
          }
          if (state.subloc == '/') {
            return BottomNavigation(
              child: child,
              index: 0,
            );
          } else if (state.subloc == '/profile') {
            return BottomNavigation(child: child, index: 1);
          } else if (state.subloc == '/cart') {
            return BottomNavigation(child: child, index: 2);
          } else {
            return child;
          }
        },
        redirect: (state) {
          if (state.subloc != '/login' && state.subloc != '/register') {
            lastRoute = state.subloc;
          }
          if (_userBloc.state.user == null && state.subloc == '/cart') {
            return (state.subloc != '/login') ? '/login' : null;
          }
          return null;
        },
        routes: [
          GoRoute(
              path: '/',
              name: 'home',
              builder: (context, state) => HomePage(),
              routes: [
                GoRoute(
                    path: 'product_page',
                    name: 'product_page',
                    builder: (context, state) {
                      final product = state.extra as Product;
                      return ProductPage(
                        product: product,
                      );
                    }),
                GoRoute(
                    path: 'profile',
                    name: 'profile',
                    builder: (context, state) => ProfilePage()),
                GoRoute(
                  path: 'cart',
                  name: 'cart',
                  builder: (context, state) => CartPage(),
                ),
                GoRoute(
                    path: 'login',
                    name: 'login',
                    builder: (context, state) => LoginPage(
                          lastRoute: lastRoute,
                        )),
                GoRoute(
                    path: 'register',
                    name: 'register',
                    builder: (context, state) => RegisterPage(
                          lastRoute: lastRoute,
                        )),
              ]),
        ],
      );
}
