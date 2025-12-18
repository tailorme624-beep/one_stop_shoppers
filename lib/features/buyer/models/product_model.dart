class Product {
  final String id;
  final String name;
  final double price;
  final String description;
  final List<String> images;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.images,
  });

  factory Product.fromFirestore(String id, Map<String, dynamic> data) {
    return Product(
      id: id,
      name: data['name'],
      price: (data['price'] as num).toDouble(),
      description: data['description'],
      images: List<String>.from(data['images'] ?? []),
    );
  }
}
