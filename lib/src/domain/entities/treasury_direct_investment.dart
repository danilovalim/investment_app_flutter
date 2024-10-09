import 'package:invest_app/src/domain/entities/investment.dart';

class TreasuryDirectInvestment extends IInvestment {
  TreasuryDirectInvestment({
    required super.value,
    required super.quantity,
    required super.productId,
  });
}
