import 'package:flutter/material.dart';
import '../services/seller_service.dart';

class SellerDashboard extends StatelessWidget {
  const SellerDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final service = SellerService();

    return Scaffold(
      appBar: AppBar(title: const Text('Seller Dashboard')),
      body: FutureBuilder<String>(
        future: service.getSellerStatus(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          final status = snapshot.data!;

          if (status == 'pending') {
            return const Center(
              child: Text('Your seller account is pending approval'),
            );
          }

          if (status == 'rejected') {
            return const Center(
              child: Text('Your seller application was rejected'),
            );
          }

          if (status == 'approved') {
            return Column(
              children: [
                ListTile(
                  title: const Text('Submit Product'),
                  leading: const Icon(Icons.add_box),
                  onTap: () {
                    Navigator.pushNamed(context, '/submit-product');
                  },
                ),
                ListTile(
                  title: const Text('My Products'),
                  leading: const Icon(Icons.inventory),
                  onTap: () {},
                ),
              ],
            );
          }

          return const Center(
            child: Text('Please register as a seller'),
          );
        },
      ),
    );
  }
}
