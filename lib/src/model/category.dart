import 'dart:convert';

extension CategoryFunctions on Category{
}
class Category {
  Category({
   required this.id,
    required  this.name,
    required  this.imagePath,
    required this.productsCount,
  });

  int id;
  String name;
  String imagePath;
  int productsCount;

  Category copyWith({
    int? id,
    String? name,
    String? imagePath,
    int? productsCount,
  }) =>
      Category(
        id: id ?? this.id,
        name: name ?? this.name,
        imagePath: imagePath ?? this.imagePath,
        productsCount: productsCount ?? this.productsCount,
      );

  factory Category.fromJson(String str) => Category.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Category.fromMap(Map<String, dynamic> json) => Category(
    id: json["id"],
    name: json["name"],
    imagePath: json["image_path"],
    productsCount: json["products_count"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "name": name,
    "image_path": imagePath,
    "products_count": productsCount,
  };
}

