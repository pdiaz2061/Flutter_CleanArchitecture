import 'package:flutter_clean_architecture_sales_app/features/products/domain/entities/product_entity.dart';

class ProductDto extends ProductEntity {
  const ProductDto({
    required super.id,
    required super.title,
    required super.price,
    required super.description,
    required super.category,
    required super.imageUrl,
    required super.rating,
  });
}
