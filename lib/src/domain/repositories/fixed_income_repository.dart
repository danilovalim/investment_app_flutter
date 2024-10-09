import 'package:invest_app/src/domain/entities/fixed_income_investment.dart';
import 'package:invest_app/src/domain/entities/fixed_income_product.dart';
import 'package:invest_app/src/domain/repositories/investiments_repository.dart';

abstract class IFixedIncomeRepository
    implements IInvestmentsRepository<FixedIncomeInvestment> {
  Future<List<FixedIncomeProduct>> getProducts();
}
