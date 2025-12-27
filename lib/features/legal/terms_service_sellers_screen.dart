import 'package:flutter/material.dart';

class TermsServiceSellersScreen extends StatelessWidget {
  const TermsServiceSellersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Terms of Service - Sellers')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Terms of Service for Sellers',
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
              'Welcome to One Stop Shoppers Seller Platform. These Terms of Service govern your use of our platform as a seller. By using the platform, you agree to these terms.',
            ),
            const SizedBox(height: 16),
            const Text(
              '2. Service Description',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'We provide a marketplace for sellers to list and sell products to buyers. We facilitate transactions but are not responsible for the products or services offered.',
            ),
            const SizedBox(height: 16),
            const Text(
              '3. Seller Accounts',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'You must create and maintain a seller account. You are responsible for all activities under your account and must provide accurate information.',
            ),
            const SizedBox(height: 16),
            const Text(
              '4. Product Listings and Sales',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'You may list products for sale. All listings must be accurate and comply with our policies. Sales are binding once accepted.',
            ),
            const SizedBox(height: 16),
            const Text(
              '5. Fees and Payments',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'We charge fees for successful transactions. Payments will be processed according to our payment schedule, minus applicable fees.',
            ),
            const SizedBox(height: 16),
            const Text(
              '6. Fulfillment and Shipping',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'You are responsible for fulfilling orders and arranging shipping. Provide accurate shipping information and tracking when possible.',
            ),
            const SizedBox(height: 16),
            const Text(
              '7. Returns and Refunds',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'You must handle returns and refunds according to your policy. Clearly communicate return procedures to buyers.',
            ),
            const SizedBox(height: 16),
            const Text(
              '8. Seller Conduct',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'You agree to conduct business ethically and comply with all applicable laws. Prohibited activities include fraud, spam, and selling illegal items.',
            ),
            const SizedBox(height: 16),
            const Text(
              '9. Intellectual Property',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'You must own or have rights to sell the products listed. We may remove listings that violate intellectual property rights.',
            ),
            const SizedBox(height: 16),
            const Text(
              '10. Data and Privacy',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'You must protect buyer data and comply with privacy laws. Use buyer information only for order fulfillment.',
            ),
            const SizedBox(height: 16),
            const Text(
              '11. Platform Policies',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Adhere to our listing policies, rating system, and community guidelines. Violations may result in penalties or account suspension.',
            ),
            const SizedBox(height: 16),
            const Text(
              '12. Termination',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'We may terminate your seller account for violations of these terms or at our discretion.',
            ),
            const SizedBox(height: 16),
            const Text(
              '13. Disclaimers',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'The platform is provided "as is." We do not guarantee uptime or sales volume.',
            ),
            const SizedBox(height: 16),
            const Text(
              '14. Limitation of Liability',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Our liability is limited to the fees paid in the last 12 months. We are not liable for business losses or damages.',
            ),
            const SizedBox(height: 16),
            const Text(
              '15. Indemnification',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'You agree to indemnify us against claims arising from your use of the platform or violation of these terms.',
            ),
            const SizedBox(height: 16),
            const Text(
              '16. Governing Law',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'These terms are governed by the laws of [Your Jurisdiction].',
            ),
            const SizedBox(height: 16),
            const Text(
              '17. Changes to Terms',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'We may update these terms. Continued use after changes constitutes acceptance.',
            ),
            const SizedBox(height: 16),
            const Text(
              '18. Contact Us',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'For questions, contact seller.support@onestopshoppers.com.',
            ),
          ],
        ),
      ),
    );
  }
}
