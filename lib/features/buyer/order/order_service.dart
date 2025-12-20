import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../cart/cart_controller.dart';

class OrderService {
  final _db = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  Future<void> placeOrder(String paymentMethod) async {
    final user = _auth.currentUser!;
    final items = CartController.items;

    final orderItems = items.map((product) {
      return {
        'productId': product.id,
        'name': product.name,
        'price': product.price,
        'quantity': 1,
      };
    }).toList();

    await _db.collection('orders').add({
      'buyerId': user.uid,
      'items': orderItems,
      'totalAmount': CartController.totalPrice,
      'paymentMethod': paymentMethod,
      'orderStatus': 'processing',
      'createdAt': FieldValue.serverTimestamp(),
    });

    CartController.items.clear();
  }

  Stream<QuerySnapshot> getBuyerOrders() {
    final user = _auth.currentUser!;
    return _db
        .collection('orders')
        .where('buyerId', isEqualTo: user.uid)
        .orderBy('createdAt', descending: true)
        .snapshots();
  }
}
