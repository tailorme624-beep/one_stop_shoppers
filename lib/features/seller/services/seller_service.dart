import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SellerService {
  final _db = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  Future<String> getSellerStatus() async {
    final doc =
        await _db.collection('sellers').doc(_auth.currentUser!.uid).get();

    return doc.exists ? doc['status'] : 'none';
  }
}
