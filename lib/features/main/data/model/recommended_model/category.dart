import 'package:equatable/equatable.dart';

class Category extends Equatable {
	final int? id;
	final String? name;
	final String? slug;
	final String? image;
	final DateTime? creationAt;
	final DateTime? updatedAt;

	const Category({
		this.id, 
		this.name, 
		this.slug, 
		this.image, 
		this.creationAt, 
		this.updatedAt, 
	});

	factory Category.fromJson(Map<String, dynamic> json) => Category(
				id: json['id'] as int?,
				name: json['name'] as String?,
				slug: json['slug'] as String?,
				image: json['image'] as String?,
				creationAt: json['creationAt'] == null
						? null
						: DateTime.parse(json['creationAt'] as String),
				updatedAt: json['updatedAt'] == null
						? null
						: DateTime.parse(json['updatedAt'] as String),
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'name': name,
				'slug': slug,
				'image': image,
				'creationAt': creationAt?.toIso8601String(),
				'updatedAt': updatedAt?.toIso8601String(),
			};

	@override
	List<Object?> get props {
		return [
				id,
				name,
				slug,
				image,
				creationAt,
				updatedAt,
		];
	}
}
