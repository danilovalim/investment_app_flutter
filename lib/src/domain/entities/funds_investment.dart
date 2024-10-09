import 'package:invest_app/src/domain/entities/investment.dart';

class FundsInvestment extends IInvestment {
  final bool isQualified;
  final bool scheduleInvestment;

  FundsInvestment({
    required super.value,
    required super.quantity,
    required super.productId,
    required this.isQualified,
    required this.scheduleInvestment,
  });
}
