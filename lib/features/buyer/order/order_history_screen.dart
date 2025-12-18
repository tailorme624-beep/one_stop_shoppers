import 'package:flutter/material.dart';
import 'order_service.dart';

class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final service = OrderService();

    return Scaffold(
      appBar: AppBar(title: const Text('My Orders')),
      body: StreamBuilder(
        stream: service.getBuyerOrders(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          final docs = snapshot.data!.docs;

          if (docs.isEmpty) {
            return const Center(child: Text('No orders yet'));
          }

          return ListView.builder(
            itemCount: docs.length,
            itemBuilder: (_, index) {
              final data = docs[index];
              return Card(
                child: ListTile(
                  title: Text(
                    'UGX ${data['totalAmount'].toStringAsFixed(0)}',
                  ),
                  subtitle: Text(
                    'Status: ${data['orderStatus']}',
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
