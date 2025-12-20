// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  String selectedMethod = 'Mobile Money';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Payment Method')),
      body: Column(
        children: [
          RadioListTile<String>(
            title: const Text('Mobile Money'),
            value: 'Mobile Money',
            groupValue: selectedMethod,
            onChanged: (value) {
              setState(() {
                selectedMethod = value!;
              });
            },
          ),
          RadioListTile<String>(
            title: const Text('Credit / Debit Card'),
            value: 'Card',
            groupValue: selectedMethod,
            onChanged: (value) {
              setState(() {
                selectedMethod = value!;
              });
            },
          ),
          const Spacer(),

          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/review');
              },
              child: const Text('Review Order'),
            ),
          ),
        ],
      ),
    );
  }
}
