import 'package:invest_app/src/domain/entities/fund_product.dart';
import 'package:invest_app/src/domain/entities/funds_investment.dart';
import 'package:invest_app/src/domain/repositories/investiments_repository.dart';

abstract class IFundsRepository
    implements IInvestmentsRepository<FundsInvestment> {
  Future<List<FundProduct>> getProducts();
}
