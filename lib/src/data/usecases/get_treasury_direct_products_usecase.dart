import 'package:invest_app/src/domain/entities/treasury_direct_product.dart';
import 'package:invest_app/src/domain/repositories/treasury_direct_repository.dart';
import 'package:invest_app/src/domain/usecases/get_treasury_direct_products_usecase.dart';

class GetTreasuryDirectProductsUsecase
    implements IGetTreasuryDirectProductsUsecase {
  final ITreasuryDirectRepository _directRepository;

  GetTreasuryDirectProductsUsecase({
    required ITreasuryDirectRepository directRepository,
  }) : _directRepository = directRepository;

  @override
  Future<List<TreasuryDirectProduct>> execute() async {
    try {
      await _directRepository.initSession();

      return await _directRepository.getProducts();
    } catch (e) {
      throw Exception(e);
    }
  }
}
