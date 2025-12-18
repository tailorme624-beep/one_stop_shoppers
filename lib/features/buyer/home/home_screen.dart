import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('One Stop Shoppers'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Featured Products',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
            ),
            itemCount: 6,
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(color: Colors.grey[300]),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Product Name'),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

