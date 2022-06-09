import 'package:e_store_coorgle/app/bloc/user_bloc.dart';
import 'package:e_store_coorgle/core/di.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key, required this.child, this.index = 0})
      : super(key: key);

  final Widget child;
  final int index;

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    final cartCount = getIt<UserBloc>().state.cartCount;
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: FloatingNavbar(
          margin: EdgeInsets.zero,
          elevation: 4,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          currentIndex: widget.index,
          items: [
            FloatingNavbarItem(
              icon: Icons.home,
              title: 'Home',
            ),
            FloatingNavbarItem(
              icon: Icons.person,
              title: 'Profile',
            ),
            FloatingNavbarItem(
                title: 'Cart',
                customWidget: Stack(fit: StackFit.loose, children: [
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: (widget.index == 2) ? Colors.black : Colors.grey,
                  ),
                  if (cartCount != null && cartCount != 0)
                    Positioned(
                        top: 0,
                        right: 0,
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
                ])),
          ],
          onTap: (int index) {
            if (index == 0) {
              context.goNamed('home');
            } else if (index == 1) {
              context.goNamed('profile');
            } else if (index == 2) {
              context.goNamed('cart');
            }
          }),
    );
  }
}
