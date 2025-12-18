import 'package:flutter/material.dart';
import '../features/buyer/auth/login_screen.dart';
import '../features/buyer/home/home_screen.dart';
import '../features/buyer/cart/cart_screen.dart';

class AppRoutes {
  static const login = '/';
  static const home = '/home';
  static const cart = '/cart';

  static Map<String, WidgetBuilder> routes = {
    login: (_) => const LoginScreen(),
    home: (_) => const HomeScreen(),
    cart: (_) => const CartScreen(),
  };
}

