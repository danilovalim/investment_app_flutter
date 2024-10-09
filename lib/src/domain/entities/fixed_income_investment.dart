import 'package:invest_app/src/domain/entities/investment.dart';

class FixedIncomeInvestment extends IInvestment {
  FixedIncomeInvestment({
    required super.value,
    required super.quantity,
    required super.productId,
  });
}
