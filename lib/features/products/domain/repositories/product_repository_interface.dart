import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture_sales_app/core/errors/failures.dart';
import 'package:flutter_clean_architecture_sales_app/features/products/domain/entities/product_entity.dart';

abstract class ProductRepositoryInterface {
  Future<Either<Failure, ProductEntity>> getProduct(int id);
  Future<Either<Failure, List<ProductEntity>>> getAllProducts();
}
