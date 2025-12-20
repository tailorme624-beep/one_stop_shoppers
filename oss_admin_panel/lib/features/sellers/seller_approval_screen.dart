import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'send_message_dialog.dart' show SendMessageDialog;

class SellerApprovalScreen extends StatelessWidget {
  const SellerApprovalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Seller Approvals')),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('sellers')
            .where('status', isEqualTo: 'pending')
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          final sellers = snapshot.data!.docs;

          return ListView.builder(
            itemCount: sellers.length,
            itemBuilder: (_, index) {
              final seller = sellers[index];
              return Card(
                child: ListTile(
                  title: Text(seller['businessName']),
                  subtitle: Text(seller['phone']),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.check, color: Colors.green),
                        onPressed: () {
                          seller.reference.update({'status': 'approved'});
                          
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.close, color: Colors.red),
                        onPressed: () {
                          seller.reference.update({'status': 'rejected'});
                        },
                      ),
                        IconButton(
                          icon: const Icon(Icons.message),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (_) => SendMessageDialog(
                                sellerId: seller.id,
                              ),
                            );
                          },
                        ),
                    ],
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

