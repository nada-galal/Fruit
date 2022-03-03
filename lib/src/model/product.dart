import 'dart:convert';

extension ProductFunctions on Product {}

class Product {
  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.imagePath,
    required this.weightUnits,
  });

  int id;
  String name;
  dynamic description;
  String imagePath;
  List<WeightUnit> weightUnits;

  Product copyWith({
    int? id,
    String? name,
    dynamic description,
    String? imagePath,
    List<WeightUnit>? weightUnits,
  }) =>
      Product(
        id: id ?? this.id,
        name: name ?? this.name,
        description: description ?? this.description,
        imagePath: imagePath ?? this.imagePath,
        weightUnits: weightUnits ?? this.weightUnits,
      );

  factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Product.fromMap(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        imagePath: json["image_path"],
        weightUnits: List<WeightUnit>.from(
            json["weight_units"].map((x) => WeightUnit.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "image_path": imagePath,
        "weight_units": List<dynamic>.from(weightUnits.map((x) => x.toMap())),
      };
}
class WeightUnit {
  WeightUnit({
    required this.id,
    required this.weightId,
    required this.weightUnit,
    required this.weightPrice,
    required this.startFrom,
  });

  int id;
  int weightId;
  String weightUnit;
  String weightPrice;
  String startFrom;

  WeightUnit copyWith({
    int? id,
    int? weightId,
    String? weightUnit,
    String? weightPrice,
    String? startFrom,
  }) =>
      WeightUnit(
        id: id ?? this.id,
        weightId: weightId ?? this.weightId,
        weightUnit: weightUnit ?? this.weightUnit,
        weightPrice: weightPrice ?? this.weightPrice,
        startFrom: startFrom ?? this.startFrom,
      );

  factory WeightUnit.fromJson(String str) =>
      WeightUnit.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WeightUnit.fromMap(Map<String, dynamic> json) => WeightUnit(
        id: json["id"],
        weightId: json["weight_id"],
        weightUnit: json["weight_unit"],
        weightPrice: json["weight_price"],
        startFrom: json["start_from"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "weight_id": weightId,
        "weight_unit": weightUnit,
        "weight_price": weightPrice,
        "start_from": startFrom,
      };
}
