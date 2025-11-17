import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_clean_architecture_sales_app/core/errors/failures.dart';
import 'package:flutter_clean_architecture_sales_app/core/usecase/usecase.dart';
import 'package:flutter_clean_architecture_sales_app/features/products/domain/entities/product_entity.dart';
import 'package:flutter_clean_architecture_sales_app/features/products/domain/repositories/product_repository_interface.dart';

class GetProductUsecase implements UseCase<ProductEntity, Params> {
  final ProductRepositoryInterface repository;
  GetProductUsecase({required this.repository});
  Future<Either<Failure, ProductEntity>> call(Params params) async {
    return await repository.getProduct(params.productId);
  }
}

class Params extends Equatable {
  final int productId;
  const Params({required this.productId});

  @override
  List<Object?> get props => [productId];
}
