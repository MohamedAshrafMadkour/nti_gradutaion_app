import 'package:equatable/equatable.dart';

class FavoriteModel extends Equatable {
  final String name;
  final double price;
  final String image;
  final bool isFavorite;

  const FavoriteModel({
    required this.name,
    required this.price,
    required this.image,
    this.isFavorite = false,
  });

  FavoriteModel copyWith({
    String? name,
    double? price,
    String? image,
    bool? isFavorite,
  }) {
    return FavoriteModel(
      name: name ?? this.name,
      price: price ?? this.price,
      image: image ?? this.image,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  @override
  List<Object?> get props => [name, price, image, isFavorite];
}
