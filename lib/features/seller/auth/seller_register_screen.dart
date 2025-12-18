import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SellerRegisterScreen extends StatelessWidget {
  SellerRegisterScreen({super.key});

  final businessCtrl = TextEditingController();
  final phoneCtrl = TextEditingController();
  final taxCtrl = TextEditingController();

  final _db = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Seller Registration')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: businessCtrl,
              decoration: const InputDecoration(labelText: 'Business Name'),
            ),
            TextField(
              controller: phoneCtrl,
              decoration: const InputDecoration(labelText: 'Phone Number'),
            ),
            TextField(
              controller: taxCtrl,
              decoration: const InputDecoration(labelText: 'Tax ID / TIN'),
            ),
            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () async {
                final user = _auth.currentUser!;
                await _db.collection('sellers').doc(user.uid).set({
                  'sellerId': user.uid,
                  'businessName': businessCtrl.text,
                  'phone': phoneCtrl.text,
                  'taxId': taxCtrl.text,
                  'status': 'pending',
                  'createdAt': FieldValue.serverTimestamp(),
                });

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Seller application submitted'),
                  ),
                );
              },
              child: const Text('Submit Application'),
            ),
          ],
        ),
      ),
    );
  }
}
