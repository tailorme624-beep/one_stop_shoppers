import 'package:flutter/material.dart';
import '../cart/cart_controller.dart';

class OrderReviewScreen extends StatelessWidget {
  const OrderReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = CartController.items;

    return Scaffold(
      appBar: AppBar(title: const Text('Order Review')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (_, index) {
                  final product = items[index];
                  return ListTile(
                    title: Text(product.name),
                    trailing: Text(
                      'UGX ${product.price.toStringAsFixed(0)}',
                    ),
                  );
                },
              ),
            ),

            const Divider(),

            Text(
              'Total: UGX ${CartController.totalPrice.toStringAsFixed(0)}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Order placed successfully'),
                  ),
                );
              },
              child: const Text('Place Order'),
            )
          ],
        ),
      ),
    );
  }
}

