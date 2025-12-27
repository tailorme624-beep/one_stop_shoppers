import 'package:flutter/material.dart';

class TermsConditionsBuyersScreen extends StatelessWidget {
  const TermsConditionsBuyersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Terms and Conditions - Buyers')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Terms and Conditions for Buyers',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Effective Date: [Insert Date]',
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 16),
            const Text(
              '1. Acceptance of Terms',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'By using One Stop Shoppers, you agree to these Terms and Conditions. If you do not agree, please do not use the app.',
            ),
            const SizedBox(height: 16),
            const Text(
              '2. User Eligibility',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'You must be at least 18 years old and have the legal capacity to enter into contracts to use this app.',
            ),
            const SizedBox(height: 16),
            const Text(
              '3. Account Registration',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'You are responsible for maintaining the confidentiality of your account credentials and all activities under your account.',
            ),
            const SizedBox(height: 16),
            const Text(
              '4. Product Purchases',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'All purchases are subject to product availability. Prices and availability are subject to change without notice.',
            ),
            const SizedBox(height: 16),
            const Text(
              '5. Payment Terms',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Payment must be made at the time of purchase. We accept various payment methods as indicated in the app.',
            ),
            const SizedBox(height: 16),
            const Text(
              '6. Shipping and Delivery',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Delivery times are estimates. We are not responsible for delays caused by circumstances beyond our control.',
            ),
            const SizedBox(height: 16),
            const Text(
              '7. Returns and Refunds',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Returns are accepted within 30 days of delivery, subject to our return policy. Refunds will be processed according to our refund guidelines.',
            ),
            const SizedBox(height: 16),
            const Text(
              '8. User Conduct',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'You agree not to use the app for any unlawful purposes or to violate any applicable laws or regulations.',
            ),
            const SizedBox(height: 16),
            const Text(
              '9. Limitation of Liability',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Our liability is limited to the maximum extent permitted by law. We are not liable for indirect or consequential damages.',
            ),
            const SizedBox(height: 16),
            const Text(
              '10. Governing Law',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'These terms are governed by the laws of [Your Jurisdiction]. Any disputes will be resolved in the courts of [Your Jurisdiction].',
            ),
            const SizedBox(height: 16),
            const Text(
              '11. Changes to Terms',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'We reserve the right to modify these terms at any time. Continued use of the app constitutes acceptance of the updated terms.',
            ),
            const SizedBox(height: 16),
            const Text(
              '12. Contact Information',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'For questions about these terms, contact us at support@onestopshoppers.com.',
            ),
          ],
        ),
      ),
    );
  }
}
