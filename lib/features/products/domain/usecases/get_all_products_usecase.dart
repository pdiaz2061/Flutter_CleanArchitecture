import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_clean_architecture_sales_app/core/errors/failures.dart';
import 'package:flutter_clean_architecture_sales_app/core/usecase/usecase.dart';
import 'package:flutter_clean_architecture_sales_app/features/products/domain/entities/product_entity.dart';
import 'package:flutter_clean_architecture_sales_app/features/products/domain/repositories/product_repository_interface.dart';

class GetAllProductsUsecase implements UseCase<List<ProductEntity>, NoParams> {
  final ProductRepositoryInterface repository;

  GetAllProductsUsecase({required this.repository});

  @override
  Future<Either<Failure, List<ProductEntity>>> call(NoParams params) async {
    return await repository.getAllProducts();
  }
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
