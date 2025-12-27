import 'package:flutter/material.dart';

class TermsServiceBuyersScreen extends StatelessWidget {
  const TermsServiceBuyersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Terms of Service - Buyers')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Terms of Service for Buyers',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Effective Date: [Insert Date]',
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 16),
            const Text(
              '1. Introduction',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Welcome to One Stop Shoppers. These Terms of Service govern your use of our app as a buyer. By using the app, you agree to these terms.',
            ),
            const SizedBox(height: 16),
            const Text(
              '2. Service Description',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'One Stop Shoppers provides a platform for browsing and purchasing products from various sellers. We facilitate transactions but are not a party to the sale.',
            ),
            const SizedBox(height: 16),
            const Text(
              '3. User Accounts',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'You must create an account to make purchases. You are responsible for maintaining the security of your account and password.',
            ),
            const SizedBox(height: 16),
            const Text(
              '4. Purchases and Payments',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'All purchases are final unless otherwise stated. Payments are processed securely through our payment partners.',
            ),
            const SizedBox(height: 16),
            const Text(
              '5. Shipping and Delivery',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Shipping times and costs vary by seller and location. We provide tracking information when available.',
            ),
            const SizedBox(height: 16),
            const Text(
              '6. Returns and Exchanges',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Returns are handled according to the seller\'s policy. Contact the seller directly for return requests.',
            ),
            const SizedBox(height: 16),
            const Text(
              '7. User Conduct',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'You agree to use the app responsibly and not engage in fraudulent or harmful activities.',
            ),
            const SizedBox(height: 16),
            const Text(
              '8. Intellectual Property',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'All content on the app is owned by us or our licensors. You may not copy or distribute it without permission.',
            ),
            const SizedBox(height: 16),
            const Text(
              '9. Disclaimers',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'The app is provided "as is." We do not guarantee the accuracy of product information or uninterrupted service.',
            ),
            const SizedBox(height: 16),
            const Text(
              '10. Limitation of Liability',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Our liability is limited to the amount paid for the transaction. We are not liable for indirect damages.',
            ),
            const SizedBox(height: 16),
            const Text(
              '11. Termination',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'We may terminate your access to the app at any time for violations of these terms.',
            ),
            const SizedBox(height: 16),
            const Text(
              '12. Governing Law',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'These terms are governed by the laws of [Your Jurisdiction].',
            ),
            const SizedBox(height: 16),
            const Text(
              '13. Changes to Terms',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'We may update these terms. Continued use after changes constitutes acceptance.',
            ),
            const SizedBox(height: 16),
            const Text(
              '14. Contact Us',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('For questions, contact support@onestopshoppers.com.'),
          ],
        ),
      ),
    );
  }
}
