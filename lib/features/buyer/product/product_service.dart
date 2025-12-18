import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/product_model.dart';

class ProductService {
  final _db = FirebaseFirestore.instance;

  Stream<List<Product>> getActiveProducts() {
    return _db
        .collection('products')
        .where('status', isEqualTo: 'active')
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map((snapshot) {
      return snapshot.docs
          .map((doc) => Product.fromFirestore(
                doc.id,
                doc.data(),
              ))
          .toList();
    });
  }
}
