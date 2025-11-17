import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture_sales_app/core/errors/failures.dart';

// ignore: avoid_types_as_parameter_names
abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
