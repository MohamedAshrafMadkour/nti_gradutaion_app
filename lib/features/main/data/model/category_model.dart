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
    title: 'Electronics',
    imageUrl:
        'https://cdn.pixabay.com/photo/2015/01/21/14/14/apple-606761_1280.jpg',
    endPoints: '/category/electronics', // لابتوب وإلكترونيات ✅
  ),
  CategoryModel(
    title: 'Jewelery',
    imageUrl:
        'https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=800&q=60',
    endPoints: '/category/jewelery', // مجوهرات ✅
  ),
  CategoryModel(
    title: "Men's Clothing",
    imageUrl:
        'https://images.unsplash.com/photo-1521334884684-d80222895322?auto=format&fit=crop&w=800&q=60',
    endPoints: "/category/men's clothing", // لبس رجالي ✅
  ),
  CategoryModel(
    title: "Women's Clothing",
    imageUrl:
        'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=800&q=60',
    endPoints: "/category/women's clothing", // لبس حريمي (فستان أنيق وواضح)
  ),
];
