import 'package:invest_app/src/data/datasources/investments_datasource.dart';
import 'package:invest_app/src/domain/entities/fixed_income_investment.dart';
import 'package:invest_app/src/domain/entities/fixed_income_product.dart';

abstract class IFixedIncomeDatasource
    implements IInvestmentsDatasource<FixedIncomeInvestment> {
  Future<List<FixedIncomeProduct>> getProducts();
}
