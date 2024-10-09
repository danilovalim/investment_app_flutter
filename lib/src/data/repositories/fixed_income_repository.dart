import 'package:invest_app/src/data/datasources/fixed_income_datasource.dart';
import 'package:invest_app/src/domain/entities/fixed_income_investment.dart';
import 'package:invest_app/src/domain/entities/fixed_income_product.dart';
import 'package:invest_app/src/domain/repositories/fixed_income_repository.dart';

class FixedIncomeRepository implements IFixedIncomeRepository {
  final IFixedIncomeDatasource _datasource;

  FixedIncomeRepository({
    required IFixedIncomeDatasource datasource,
  }) : _datasource = datasource;

  @override
  Future invest(FixedIncomeInvestment investment) async {
    return await _datasource.invest(investment);
  }

  @override
  Future<List<FixedIncomeProduct>> getProducts() async {
    return await _datasource.getProducts();
  }
}
