import 'package:invest_app/src/data/datasources/funds_datasource.dart';
import 'package:invest_app/src/domain/entities/fund_product.dart';
import 'package:invest_app/src/domain/entities/funds_investment.dart';
import 'package:invest_app/src/domain/repositories/funds_repository.dart';

class FundsRepository implements IFundsRepository {
  final IFundsDatasource _datasource;

  FundsRepository({
    required IFundsDatasource datasource,
  }) : _datasource = datasource;

  @override
  Future invest(FundsInvestment investment) async {
    return await _datasource.invest(investment);
  }

  @override
  Future<List<FundProduct>> getProducts() async {
    return await _datasource.getProducts();
  }
}
