// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SubmitProductScreen extends StatelessWidget {
  SubmitProductScreen({super.key});

  final nameCtrl = TextEditingController();
  final priceCtrl = TextEditingController();
  final descCtrl = TextEditingController();
  final stockCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Submit Product')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            TextField(controller: nameCtrl, decoration: const InputDecoration(labelText: 'Product Name')),
            TextField(controller: priceCtrl, decoration: const InputDecoration(labelText: 'Price')),
            TextField(controller: stockCtrl, decoration: const InputDecoration(labelText: 'Stock')),
            TextField(controller: descCtrl, decoration: const InputDecoration(labelText: 'Description')),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () async {
                final uid = FirebaseAuth.instance.currentUser!.uid;

                await FirebaseFirestore.instance
                    .collection('product_submissions')
                    .add({
                  'sellerId': uid,
                  'name': nameCtrl.text,
                  'price': double.parse(priceCtrl.text),
                  'stock': int.parse(stockCtrl.text),
                  'description': descCtrl.text,
                  'status': 'pending',
                  'createdAt': FieldValue.serverTimestamp(),
                });

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Product submitted for review')),
                );
              },
              child: const Text('Submit for Review'),
            )
          ],
        ),
      ),
    );
  }
}
