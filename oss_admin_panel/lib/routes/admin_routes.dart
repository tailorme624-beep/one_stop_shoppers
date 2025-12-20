// ignore_for_file: strict_top_level_inference

import 'package:flutter/material.dart';
import '../features/sellers/seller_approval_screen.dart';
import '../features/products/product_queue_screen.dart';
import '../features/orders/order_oversight_screen.dart';

class AdminRoutes {
  static const sellers = '/sellers';
  static const products = '/products';
  static const orders = '/orders';

  static Map<String, WidgetBuilder> routes = {
    sellers: (_) => const SellerApprovalScreen(),
    products: (_) => const ProductQueueScreen(),
    orders: (_) => const OrderOversightScreen(),
  };
}
