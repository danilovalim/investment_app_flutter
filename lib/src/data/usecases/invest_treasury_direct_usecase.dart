import 'package:invest_app/src/domain/entities/treasury_direct_investment.dart';
import 'package:invest_app/src/domain/repositories/treasury_direct_repository.dart';
import 'package:invest_app/src/domain/usecases/invest_treasury_direct_usecase.dart';

class InvestTreasuryDirectUsecase implements IInvestTreasuryDirectUsecase {
  final ITreasuryDirectRepository _repository;

  InvestTreasuryDirectUsecase({
    required ITreasuryDirectRepository repository,
  }) : _repository = repository;

  @override
  Future<void> execute(TreasuryDirectInvestment investment) async {
    try {
      await _repository.initSession();

      _repository.invest(investment);
    } catch (e) {
      throw Exception(e);
    }
  }
}
