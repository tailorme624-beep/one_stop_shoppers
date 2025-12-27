import 'package:flutter/material.dart';
import '../features/buyer/auth/login_screen.dart';
import '../features/buyer/home/home_screen.dart';
import '../features/buyer/cart/cart_screen.dart';
import '../features/buyer/checkout/shipping_address_screen.dart';
import '../features/buyer/checkout/payment_method_screen.dart';
import '../features/buyer/checkout/order_review_screen.dart';
import '../features/buyer/order/order_history_screen.dart';
import '../features/buyer/notifications/notifications_screen.dart';
import '../features/legal/privacy_policy_screen.dart';
import '../features/legal/terms_conditions_buyers_screen.dart';
import '../features/legal/terms_conditions_sellers_screen.dart';
import '../features/legal/terms_service_buyers_screen.dart';
import '../features/legal/terms_service_sellers_screen.dart';

class AppRoutes {
  static const login = '/login';
  static const home = '/home';
  static const cart = '/cart';
  static const orders = '/orders';
  static const notifications = '/notifications';
  static const shipping = '/shipping';
  static const payment = '/payment';
  static const review = '/review';
  static const privacyPolicy = '/privacy-policy';
  static const termsConditionsBuyers = '/terms-conditions-buyers';
  static const termsConditionsSellers = '/terms-conditions-sellers';
  static const termsServiceBuyers = '/terms-service-buyers';
  static const termsServiceSellers = '/terms-service-sellers';

  static Map<String, WidgetBuilder> routes = {
    login: (_) => LoginScreen(),
    home: (_) => HomeScreen(),
    cart: (_) => CartScreen(),
    orders: (_) => OrderHistoryScreen(),
    notifications: (_) => NotificationsScreen(),
    shipping: (_) => ShippingAddressScreen(),
    payment: (_) => PaymentMethodScreen(),
    review: (_) => OrderReviewScreen(),
    privacyPolicy: (_) => PrivacyPolicyScreen(),
    termsConditionsBuyers: (_) => TermsConditionsBuyersScreen(),
    termsConditionsSellers: (_) => TermsConditionsSellersScreen(),
    termsServiceBuyers: (_) => TermsServiceBuyersScreen(),
    termsServiceSellers: (_) => TermsServiceSellersScreen(),
  };
}
