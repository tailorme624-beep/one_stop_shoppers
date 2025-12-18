import 'package:flutter/material.dart';
import '../features/sellers/seller_approval_screen.dart';
import '../features/products/product_queue_screen.dart';

class AdminRoutes {
  static const sellers = '/sellers';
  static const products = '/products';

  static Map<String, WidgetBuilder> routes = {
    sellers: (_) => const SellerApprovalScreen(),
    products: (_) => const ProductQueueScreen(),
  };
}

