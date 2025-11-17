import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture_sales_app/features/products/domain/entities/product_entity.dart';
import 'package:flutter_clean_architecture_sales_app/features/products/domain/entities/rating_entity.dart';
import 'package:flutter_clean_architecture_sales_app/features/products/domain/repositories/product_repository_interface.dart';
import 'package:flutter_clean_architecture_sales_app/features/products/domain/usecases/get_product_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'get_product_usecase_test.mocks.dart';

@GenerateNiceMocks([MockSpec<ProductRepositoryInterface>()])
// class MockProductRepository extends Mock
//     implements ProductRepositoryInterface {}
void main() {
  late GetProductUsecase useCase;
  late MockProductRepositoryInterface mockProductRepository;

  setUp(() {
    mockProductRepository = MockProductRepositoryInterface();
    useCase = GetProductUsecase(repository: mockProductRepository);
  });

  const int testProductId = 1;
  const testProduct = ProductEntity(
    id: 1,
    title: 'Producto de Prueba',
    price: 10.0,
    description: 'Prueba',
    category: 'Categoria Prueba',
    imageUrl: '',
    rating: RatingEntity(rate: 7.0, count: 2),
  );

  test(
    'Dado un id valido [When] se ejecuta el usecase [Then] retorne ProductEntity y solo llame a getProduct',
    () async {
      // Arrange
      when(
        mockProductRepository.getProduct(testProductId),
      ).thenAnswer((realInvocation) async => const Right(testProduct));

      // Act
      // final result = await useCase.execute(productId: testProductId);
      // final result = await useCase.call(productId: testProductId);
      // final result = await useCase(productId: testProductId);
      final result = await useCase(Params(productId: testProductId));

      // Assert
      expect(result, const Right(testProduct));
      verify(mockProductRepository.getProduct(testProductId)).called(1);
      verifyNoMoreInteractions(mockProductRepository);
    },
  );
}
