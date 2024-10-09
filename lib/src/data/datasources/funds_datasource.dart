import 'package:invest_app/src/data/datasources/investments_datasource.dart';
import 'package:invest_app/src/domain/entities/fund_product.dart';
import 'package:invest_app/src/domain/entities/funds_investment.dart';

abstract class IFundsDatasource
    implements IInvestmentsDatasource<FundsInvestment> {
  Future<List<FundProduct>> getProducts();
}
