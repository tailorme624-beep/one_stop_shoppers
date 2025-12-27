import 'package:flutter/material.dart';

class TermsConditionsSellersScreen extends StatelessWidget {
  const TermsConditionsSellersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms and Conditions - Sellers'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Terms and Conditions for Sellers',
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
              'By registering as a seller on One Stop Shoppers, you agree to these Terms and Conditions. If you do not agree, please do not register.',
            ),
            const SizedBox(height: 16),
            const Text(
              '2. Seller Eligibility',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'You must be at least 18 years old and have the legal capacity to enter into contracts. You must comply with all applicable laws and regulations.',
            ),
            const SizedBox(height: 16),
            const Text(
              '3. Account Registration',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'You must provide accurate and complete information during registration. You are responsible for maintaining the confidentiality of your account credentials.',
            ),
            const SizedBox(height: 16),
            const Text(
              '4. Product Listings',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'All product listings must be accurate, legal, and owned or rightfully sellable by you. You must not list prohibited items or make misleading claims.',
            ),
            const SizedBox(height: 16),
            const Text(
              '5. Pricing and Fees',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'You set your own prices. Platform fees will be deducted from successful transactions according to our fee schedule.',
            ),
            const SizedBox(height: 16),
            const Text(
              '6. Order Fulfillment',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'You must fulfill orders promptly and accurately. Failure to do so may result in penalties or account suspension.',
            ),
            const SizedBox(height: 16),
            const Text(
              '7. Payment Processing',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Payments are held in escrow until order completion or dispute resolution. Funds will be released according to our policies.',
            ),
            const SizedBox(height: 16),
            const Text(
              '8. Seller Conduct',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'You must conduct business ethically and professionally. Prohibited activities include fraud, harassment, or violation of intellectual property rights.',
            ),
            const SizedBox(height: 16),
            const Text(
              '9. Intellectual Property',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'You retain ownership of your intellectual property. By listing products, you grant us a license to display them on the platform.',
            ),
            const SizedBox(height: 16),
            const Text(
              '10. Dispute Resolution',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Disputes with buyers will be resolved through our dispute resolution process. You agree to cooperate with investigations.',
            ),
            const SizedBox(height: 16),
            const Text(
              '11. Termination',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'We may terminate your seller account for violations of these terms. You may terminate by closing your account.',
            ),
            const SizedBox(height: 16),
            const Text(
              '12. Limitation of Liability',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Our liability is limited to the maximum extent permitted by law. We are not liable for indirect or consequential damages.',
            ),
            const SizedBox(height: 16),
            const Text(
              '13. Governing Law',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'These terms are governed by the laws of [Your Jurisdiction]. Any disputes will be resolved in the courts of [Your Jurisdiction].',
            ),
            const SizedBox(height: 16),
            const Text(
              '14. Changes to Terms',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'We reserve the right to modify these terms at any time. Continued use constitutes acceptance of the updated terms.',
            ),
            const SizedBox(height: 16),
            const Text(
              '15. Contact Information',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'For questions about these terms, contact us at seller.support@onestopshoppers.com.',
            ),
          ],
        ),
      ),
    );
  }
}
