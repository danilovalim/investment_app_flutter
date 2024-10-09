import 'package:invest_app/src/domain/entities/funds_investment.dart';
import 'package:invest_app/src/domain/repositories/funds_repository.dart';
import 'package:invest_app/src/domain/usecases/invest_funds_usecase.dart';

class InvestFundsUsecase implements IInvestFundsUsecase {
  final IFundsRepository repository;

  InvestFundsUsecase({
    required this.repository,
  });

  @override
  Future execute(FundsInvestment investment) async{
    repository.invest(investment);
  }
}
