class ProductModel {
  final String title;
  final num price;
  final String imageUrl;
  final String description;
  final int id;
  const ProductModel({
    required this.id,
    required this.description,
    required this.title,
    required this.price,
    required this.imageUrl,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      title: json['title'],
      price: json['price'],
      imageUrl: json['image'],
      description: json['description'],
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() => {
    'title': title,
    'price': price,
    'image': imageUrl,
  };
}

final List<ProductModel> cartItems = [
  const ProductModel(
    title: 'Smart Watch',
    price: 434,
    imageUrl:
        'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=800&q=80',
    description: '',
    id: 9,
  ),
  const ProductModel(
    title: 'Headphones',
    price: 3434,
    imageUrl:
        'https://images.unsplash.com/photo-1580894908361-967195033215?auto=format&fit=crop&w=800&q=80',
    description: '',
    id: 8,
  ),
  const ProductModel(
    title: 'Handbag',
    price: 4343,
    imageUrl:
        'https://images.unsplash.com/photo-1584917865442-de89df76afd3?auto=format&fit=crop&w=800&q=80',
    description: '',
    id: 8,
  ),
];

final List<ProductModel> favoriteItems = [
  const ProductModel(
    title: 'Sunglasses',
    price: 4343,
    imageUrl:
        'https://images.unsplash.com/photo-1519682337058-a94d519337bc?auto=format&fit=crop&w=800&q=80',
    description: '',
    id: 8,
  ),
  const ProductModel(
    title: 'Smart Watch',
    price: 3434,
    imageUrl:
        'https://images.unsplash.com/photo-1519744792095-2f2205e87b6f?auto=format&fit=crop&w=800&q=80',
    description: '',
    id: 8, // ⌚ ساعة أنيقة حديثة
  ),

  const ProductModel(
    title: 'T-Shirt',
    price: 4343,
    imageUrl:
        'https://images.unsplash.com/photo-1503341455253-b2e723bb3dbb?auto=format&fit=crop&w=800&q=80',
    description: '',
    id: 8,
  ),
];
