import 'package:cloud_firestore/cloud_firestore.dart';

class DashboardService {
  final _db = FirebaseFirestore.instance;

  Future<int> pendingSellers() async {
    final snap = await _db
        .collection('sellers')
        .where('status', isEqualTo: 'pending')
        .get();
    return snap.size;
  }

  Future<int> pendingProducts() async {
    final snap = await _db
        .collection('product_submissions')
        .where('status', isEqualTo: 'pending')
        .get();
    return snap.size;
  }

  Future<int> totalOrders() async {
    final snap = await _db.collection('orders').get();
    return snap.size;
  }

  Future<double> totalRevenue() async {
    final snap = await _db.collection('orders').get();
    double total = 0;
    for (var doc in snap.docs) {
      total += (doc['totalAmount'] as num).toDouble();
    }
    return total;
  }
}
