import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductQueueScreen extends StatelessWidget {
  const ProductQueueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product Approval Queue')),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('product_submissions')
            .where('status', isEqualTo: 'pending')
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          final submissions = snapshot.data!.docs;

          return ListView.builder(
            itemCount: submissions.length,
            itemBuilder: (_, index) {
              final p = submissions[index];
              return Card(
                child: ListTile(
                  title: Text(p['name']),
                  subtitle: Text('UGX ${p['price']}'),
                  trailing: ElevatedButton(
                    child: const Text('Approve & Post'),
                    onPressed: () async {
                      // 1. Create live product
                      await FirebaseFirestore.instance
                          .collection('products')
                          .add({
                        ...p.data(),
                        'status': 'active',
                        'createdAt': FieldValue.serverTimestamp(),
                      });

                      // 2. Mark submission approved
                      await p.reference.update({'status': 'approved'});
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

