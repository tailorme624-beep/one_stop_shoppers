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
          Radio(
            value: 'Mobile Money',
            groupValue: selectedMethod,
            onChanged: (value) {
              setState(() => selectedMethod = value!);
            },
          ),
          const Text('Mobile Money'),
          Radio(
            value: 'Card',
            groupValue: selectedMethod,
            onChanged: (value) {
              setState(() => selectedMethod = value!);
            },
          ),
          const Text('Credit / Debit Card'),

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
