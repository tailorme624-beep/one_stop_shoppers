import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../cart/cart_controller.dart';
import '../../../core/widgets/primary_button.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Column(
        children: [
                        SizedBox(
                height: 250,
                child: PageView(
                  children: product.images.isNotEmpty
                      ? product.images
                          .map(
                            (img) => Image.network(
                              img,
                              fit: BoxFit.cover,
                            ),
                          )
                          .toList()
                      : [
                          Container(color: Colors.grey[300]),
                        ],
                ),
              ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),

                  Text(
                    'UGX ${product.price.toStringAsFixed(0)}',
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(height: 15),

                  Text(product.description),
                  const Spacer(),

                  PrimaryButton(
                    title: 'Add to Cart',
                    onPressed: () {
                      CartController.addToCart(product);

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Added to cart'),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

