import 'package:invest_app/src/domain/entities/fixed_income_investment.dart';
import 'package:invest_app/src/domain/repositories/fixed_income_repository.dart';
import 'package:invest_app/src/domain/usecases/invest_fixed_income_usecase.dart';

class InvestFixedIncomeUsecase implements IInvestFixedIncomeUsecase {
  final IFixedIncomeRepository repository;

  InvestFixedIncomeUsecase({
    required this.repository,
  });

  @override
  Future execute(FixedIncomeInvestment investiment) async{
    repository.invest(investiment);
  }
}
