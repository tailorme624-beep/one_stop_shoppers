import '../features/buyer/checkout/shipping_address_screen.dart';
import '../features/buyer/checkout/payment_method_screen.dart';
import '../features/buyer/checkout/order_review_screen.dart';
import '../features/buyer/order/order_history_screen.dart';
import '../features/buyer/notifications/notifications_screen.dart';

static const orders = '/orders';

routes[orders] = (_) => const OrderHistoryScreen();


static const notifications = '/notifications';

routes[notifications] = (_) => const NotificationsScreen();


static const shipping = '/shipping';
static const payment = '/payment';
static const review = '/review';

static Map<String, WidgetBuilder> routes = {
  login: (_) => const LoginScreen(),
  home: (_) => const HomeScreen(),
  cart: (_) => const CartScreen(),
  shipping: (_) => const ShippingAddressScreen(),
  payment: (_) => const PaymentMethodScreen(),
  review: (_) => const OrderReviewScreen(),
};
