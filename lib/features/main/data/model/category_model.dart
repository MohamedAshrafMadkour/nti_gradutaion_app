class CategoryModel {
  final String title;
  final String imageUrl;

  CategoryModel({
    required this.title,
    required this.imageUrl,
  });
}

final List<CategoryModel> categories = [
  CategoryModel(
    title: 'Electronics',
    imageUrl:
        'https://cdn.pixabay.com/photo/2015/01/21/14/14/apple-606761_1280.jpg', // لابتوب وإلكترونيات ✅
  ),
  CategoryModel(
    title: 'Jewelery',
    imageUrl:
        'https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=800&q=60', // مجوهرات ✅
  ),
  CategoryModel(
    title: "Men's Clothing",
    imageUrl:
        'https://images.unsplash.com/photo-1521334884684-d80222895322?auto=format&fit=crop&w=800&q=60', // لبس رجالي ✅
  ),
  CategoryModel(
    title: "Women's Clothing",
    imageUrl:
        'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=800&q=60', // لبس حريمي (فستان أنيق وواضح)
  ),
];
