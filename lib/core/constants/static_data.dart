class StaticData {
  static final List<String> ebayBannerImages = [
    'https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1200&q=60',
    'https://images.unsplash.com/photo-1512436991641-6745cdb1723f?auto=format&fit=crop&w=1200&q=60',
    'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=1200&q=60',
  ];

  static final List<Map<String, String>> products = List.generate(8, (i) {
    return {
      'title': 'Product ${i + 1}',
      'price': '\$${(20 + i * 15)}',
      'img': 'https://picsum.photos/300/300?image=${20 + i}',
    };
  });
}
