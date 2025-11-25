import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture_sales_app/features/products/data/dtos/product_dto.dart';
import 'package:flutter_clean_architecture_sales_app/features/products/data/dtos/rating_dto.dart';
import 'package:flutter_clean_architecture_sales_app/features/products/domain/entities/product_entity.dart';
import 'package:flutter_clean_architecture_sales_app/features/products/domain/entities/rating_entity.dart';
import 'package:flutter_clean_architecture_sales_app/features/products/domain/usecases/get_all_products_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
//import 'package:mockito/annotations.dart';
import 'get_product_usecase_test.mocks.dart';

//@GenerateNiceMocks([MockSpec<ProductRepositoryInterface>()])
// class MockProductRepository extends Mock
//     implements ProductRepositoryInterface {}

void main() {
  late GetAllProductsUsecase useCase;
  late MockProductRepositoryInterface mockProductRepository;

  setUp(() {
    mockProductRepository = MockProductRepositoryInterface();
    useCase = GetAllProductsUsecase(repository: mockProductRepository);
  });

  // const int testProductId = 1;

  const testProduct = ProductDto(
    id: 1,
    title: 'Producto de Prueba',
    price: 10.0,
    description: 'Prueba',
    category: 'Categoria Prueba',
    image: '',
    rating: RatingDto(rate: 7.0, count: 2),
  );

  test('Probar que ProductDto no extiende de ProductEntity', () async {
    // // Arrange
    // when(
    //   mockProductRepository.getAllProducts(),
    // ).thenAnswer((realInvocation) async => const Right());
    // Act
    // final result = await useCase(NoParams());

    // Assert
    expect(testProduct, isNot(isA<ProductEntity>()));
    verify(mockProductRepository.getAllProducts()).called(1);
    verifyNoMoreInteractions(mockProductRepository);
  });
}
