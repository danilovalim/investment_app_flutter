import 'package:invest_app/src/domain/entities/treasury_direct_investment.dart';
import 'package:invest_app/src/domain/entities/treasury_direct_product.dart';
import 'package:invest_app/src/domain/repositories/investiments_repository.dart';

abstract class ITreasuryDirectRepository
    implements IInvestmentsRepository<TreasuryDirectInvestment> {
  Future initSession();
  Future<List<TreasuryDirectProduct>> getProducts();
}
