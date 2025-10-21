class ProductModel {
  final String title;
  final String price;
  final String imageUrl;

  const ProductModel({
    required this.title,
    required this.price,
    required this.imageUrl,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      title: json['title'],
      price: json['price'],
      imageUrl: json['img'],
    );
  }

  Map<String, dynamic> toJson() => {
    'title': title,
    'price': price,
    'img': imageUrl,
  };
}

final List<ProductModel> cartItems = [
  const ProductModel(
    title: 'Smart Watch',
    price: '\$120',
    imageUrl:
        'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=800&q=80',
  ),
  const ProductModel(
    title: 'Headphones',
    price: '\$80',
    imageUrl:
        'https://images.unsplash.com/photo-1580894908361-967195033215?auto=format&fit=crop&w=800&q=80',
  ),
  const ProductModel(
    title: 'Handbag',
    price: '\$70',
    imageUrl:
        'https://images.unsplash.com/photo-1584917865442-de89df76afd3?auto=format&fit=crop&w=800&q=80',
  ),
];

double get totalPrice => cartItems.fold(
  0,
  (sum, item) => sum + double.parse(item.price.replaceAll('\$', '')),
);
final List<ProductModel> favoriteItems = [
  const ProductModel(
    title: 'Sunglasses',
    price: '\$45',
    imageUrl:
        'https://images.unsplash.com/photo-1519682337058-a94d519337bc?auto=format&fit=crop&w=800&q=80',
  ),
  const ProductModel(
    title: 'Smart Watch',
    price: '\$120',
    imageUrl:
        'https://images.unsplash.com/photo-1519744792095-2f2205e87b6f?auto=format&fit=crop&w=800&q=80', // ⌚ ساعة أنيقة حديثة
  ),

  const ProductModel(
    title: 'T-Shirt',
    price: '\$35',
    imageUrl:
        'https://images.unsplash.com/photo-1503341455253-b2e723bb3dbb?auto=format&fit=crop&w=800&q=80',
  ),
];
