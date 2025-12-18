import '../models/product_model.dart';

class CartController {
  static final List<Product> _cartItems = [];

  static List<Product> get items => _cartItems;

  static void addToCart(Product product) {
    _cartItems.add(product);
  }

  static void removeFromCart(Product product) {
    _cartItems.remove(product);
  }

  static double get totalPrice {
    return _cartItems.fold(0, (sum, item) => sum + item.price);
  }
}
