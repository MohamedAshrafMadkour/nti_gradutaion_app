class CategoryModel {
  final String title;
  final String imageUrl;
  final String endPoints;
  CategoryModel({
    required this.endPoints,
    required this.title,
    required this.imageUrl,
  });
}

final List<CategoryModel> categories = [
  CategoryModel(
    title: 'Furniture',
    imageUrl:
        'https://cdn.dummyjson.com/product-images/furniture/annibale-colombo-bed/thumbnail.webp',
    endPoints: 'furniture',
  ),
  CategoryModel(
    title: 'kitchen-accessories',
    imageUrl:
        'https://cdn.dummyjson.com/product-images/kitchen-accessories/black-aluminium-cup/thumbnail.webp',
    endPoints: 'kitchen-accessories',
  ),
  CategoryModel(
    title: 'Laptops',
    imageUrl:
        'https://cdn.dummyjson.com/product-images/laptops/apple-macbook-pro-14-inch-space-grey/thumbnail.webp',
    endPoints: 'laptops',
  ),
  CategoryModel(
    title: 'Mobile Accessories',
    imageUrl:
        'https://cdn.dummyjson.com/product-images/mobile-accessories/apple-airpods-max-silver/thumbnail.webp',
    endPoints: 'mobile-accessories',
  ),
  CategoryModel(
    title: 'Sports-accessories',
    imageUrl:
        'https://cdn.dummyjson.com/product-images/sports-accessories/baseball-ball/thumbnail.webp',
    endPoints: 'sports-accessories',
  ),
  CategoryModel(
    title: 'Sunglasses',
    imageUrl:
        'https://cdn.dummyjson.com/product-images/sunglasses/classic-sun-glasses/thumbnail.webp',
    endPoints: 'sunglasses',
  ),
];
