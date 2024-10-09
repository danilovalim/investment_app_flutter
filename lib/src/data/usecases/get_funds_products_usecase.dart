import 'package:invest_app/src/domain/entities/fund_product.dart';
import 'package:invest_app/src/domain/repositories/funds_repository.dart';
import 'package:invest_app/src/domain/usecases/get_funds_products_usecase.dart';

class GetFundsProductsUsecase implements IGetFundsProductsUsecase {
  final IFundsRepository _repository;

  GetFundsProductsUsecase({
    required IFundsRepository repository,
  }) : _repository = repository;

  @override
  Future<List<FundProduct>> execute() async {
    return await _repository.getProducts();
  }
}
