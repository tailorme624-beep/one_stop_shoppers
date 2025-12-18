import 'package:flutter/material.dart';

class ShippingAddressScreen extends StatelessWidget {
  const ShippingAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shipping Address')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Full Name'),
            ),
            const SizedBox(height: 10),

            TextField(
              decoration: const InputDecoration(labelText: 'Phone Number'),
            ),
            const SizedBox(height: 10),

            TextField(
              decoration: const InputDecoration(labelText: 'City'),
            ),
            const SizedBox(height: 10),

            TextField(
              decoration: const InputDecoration(labelText: 'Delivery Address'),
            ),
            const Spacer(),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/payment');
              },
              child: const Text('Continue to Payment'),
            )
          ],
        ),
      ),
    );
  }
}

