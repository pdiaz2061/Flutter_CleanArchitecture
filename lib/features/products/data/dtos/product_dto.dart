import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:flutter_clean_architecture_sales_app/features/products/data/dtos/rating_dto.dart';

class ProductDto extends Equatable {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final RatingDto rating;

  const ProductDto({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  factory ProductDto.fromRawJson(String str) =>
      ProductDto.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProductDto.fromJson(Map<String, dynamic> json) => ProductDto(
    id: json["id"],
    title: json["title"],
    price: json["price"]?.toDouble(),
    description: json["description"],
    category: json["category"],
    image: json["image"],
    rating: RatingDto.fromJson(json["rating"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "price": price,
    "description": description,
    "category": category,
    "image": image,
    "rating": rating.toJson(),
  };
  @override
  List<Object?> get props => [
    id,
    title,
    price,
    description,
    category,
    image,
    rating,
  ];
}
