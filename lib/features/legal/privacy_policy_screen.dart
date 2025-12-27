import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Privacy Policy',
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
              'One Stop Shoppers ("we," "us," or "our") respects your privacy. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you use our mobile application.',
            ),
            const SizedBox(height: 16),
            const Text(
              '2. Information We Collect',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'We collect information you provide directly, such as when you create an account, make a purchase, or contact us. This includes name, email, phone number, payment information, and shipping address.',
            ),
            const SizedBox(height: 8),
            const Text(
              'We also collect information automatically, including device information, IP address, browser type, and usage data through cookies and similar technologies.',
            ),
            const SizedBox(height: 16),
            const Text(
              '3. How We Use Your Information',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'We use your information to: process transactions, provide customer service, send communications, personalize your experience, improve our services, and comply with legal obligations.',
            ),
            const SizedBox(height: 16),
            const Text(
              '4. Information Sharing',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'We may share your information with service providers, for legal reasons, or with your consent. We do not sell your personal information to third parties.',
            ),
            const SizedBox(height: 16),
            const Text(
              '5. Data Security',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'We implement appropriate security measures to protect your information. However, no method of transmission over the internet is 100% secure.',
            ),
            const SizedBox(height: 16),
            const Text(
              '6. Your Rights',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Depending on your location, you may have rights to access, correct, delete, or restrict processing of your personal information. Contact us to exercise these rights.',
            ),
            const SizedBox(height: 16),
            const Text(
              '7. Cookies and Tracking',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'We use cookies to enhance your experience. You can control cookie settings through your browser.',
            ),
            const SizedBox(height: 16),
            const Text(
              '8. Third-Party Services',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Our app may contain links to third-party websites. We are not responsible for their privacy practices.',
            ),
            const SizedBox(height: 16),
            const Text(
              '9. Children\'s Privacy',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Our services are not intended for children under 13. We do not knowingly collect personal information from children under 13.',
            ),
            const SizedBox(height: 16),
            const Text(
              '10. Changes to This Policy',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'We may update this Privacy Policy. We will notify you of significant changes.',
            ),
            const SizedBox(height: 16),
            const Text(
              '11. Contact Us',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'If you have questions about this Privacy Policy, contact us at privacy@onestopshoppers.com.',
            ),
          ],
        ),
      ),
    );
  }
}
