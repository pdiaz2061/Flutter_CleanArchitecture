import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_clean_architecture_sales_app/features/products/data/dtos/product_dto.dart';
import 'package:flutter_clean_architecture_sales_app/features/products/domain/entities/product_entity.dart';

void main() {
  group('ProductDto inheritance', () {
    test('ProductDto should not extend ProductEntity', () {
      final productJson = {
        "id": 1,
        "title": "Test Product",
        "price": 10.5,
        "description": "desc",
        "category": "cat",
        "image": "img.png",
        "rating": {"rate": 4.5, "count": 10},
      };

      final dto = ProductDto.fromJson(productJson);

      // Verifica en tiempo de ejecución que la instancia NO es ProductEntity
      expect(dto, isNot(isA<ProductEntity>()));
      expect(dto is ProductEntity, false);
    });
  });
}
