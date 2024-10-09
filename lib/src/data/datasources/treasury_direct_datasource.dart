import 'package:invest_app/src/data/datasources/investments_datasource.dart';
import 'package:invest_app/src/domain/entities/treasury_direct_investment.dart';
import 'package:invest_app/src/domain/entities/treasury_direct_product.dart';

abstract class ITreasuryDirectDatasource
    implements IInvestmentsDatasource<TreasuryDirectInvestment> {
  Future initSession();
  Future<List<TreasuryDirectProduct>> getProducts();
}
