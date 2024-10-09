import 'package:invest_app/src/data/datasources/treasury_direct_datasource.dart';
import 'package:invest_app/src/domain/entities/treasury_direct_investment.dart';
import 'package:invest_app/src/domain/entities/treasury_direct_product.dart';
import 'package:invest_app/src/domain/repositories/treasury_direct_repository.dart';

class TreasuryDirectRepository implements ITreasuryDirectRepository {
  final ITreasuryDirectDatasource _datasource;

  TreasuryDirectRepository({
    required ITreasuryDirectDatasource datasource,
  }) : _datasource = datasource;

  @override
  Future<void> initSession() async {
    return await _datasource.initSession();
  }

  @override
  Future<List<TreasuryDirectProduct>> getProducts() async {
    return await _datasource.getProducts();
  }

  @override
  Future<void> invest(TreasuryDirectInvestment investment) async {
    return await _datasource.invest(investment);
  }
}
