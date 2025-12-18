import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class OrderOversightScreen extends StatelessWidget {
  const OrderOversightScreen({super.key});

  final List<String> statuses = const [
    'processing',
    'shipped',
    'delivered',
    'completed',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Order Oversight')),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('orders')
            .orderBy('createdAt', descending: true)
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          final orders = snapshot.data!.docs;

          if (orders.isEmpty) {
            return const Center(child: Text('No orders yet'));
          }

          return ListView.builder(
            itemCount: orders.length,
            itemBuilder: (_, index) {
              final order = orders[index];

              return Card(
                child: ListTile(
                  title: Text(
                    'UGX ${order['totalAmount'].toStringAsFixed(0)}',
                  ),
                  subtitle: Text(
                    'Status: ${order['orderStatus']}',
                  ),
                  trailing: DropdownButton<String>(
                    value: order['orderStatus'],
                    items: statuses
                        .map(
                          (s) => DropdownMenuItem(
                            value: s,
                            child: Text(s.toUpperCase()),
                          ),
                        )
                        .toList(),
                    onChanged: (newStatus) async {
                      await order.reference.update({
                        'orderStatus': newStatus,
                        'updatedAt': FieldValue.serverTimestamp(),
                      });

                      // Notify buyer
                      await FirebaseFirestore.instance
                          .collection('notifications')
                          .add({
                        'userId': order['buyerId'],
                        'title': 'Order Update',
                        'message':
                            'Your order is now ${newStatus!.toUpperCase()}',
                        'type': 'order',
                        'isRead': false,
                        'createdAt': FieldValue.serverTimestamp(),
                      });
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

