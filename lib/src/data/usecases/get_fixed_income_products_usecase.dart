import 'package:invest_app/src/domain/entities/fixed_income_product.dart';
import 'package:invest_app/src/domain/repositories/fixed_income_repository.dart';
import 'package:invest_app/src/domain/usecases/get_fixed_income_products_usecase.dart';

class GetFixedIncomeProductsUsecase implements IGetFixedIncomeProductsUsecase {
  final IFixedIncomeRepository _repository;

  GetFixedIncomeProductsUsecase({
    required IFixedIncomeRepository repository,
  }) : _repository = repository;

  @override
  Future<List<FixedIncomeProduct>> execute() async {
    return await _repository.getProducts();
  }
}
