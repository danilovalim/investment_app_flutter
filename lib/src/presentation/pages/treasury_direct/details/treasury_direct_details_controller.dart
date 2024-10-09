import 'package:get/get.dart';
import 'package:invest_app/src/core/routes/app_routes.dart';
import 'package:invest_app/src/domain/entities/treasury_direct_investment.dart';
import 'package:invest_app/src/domain/entities/treasury_direct_product.dart';
import 'package:invest_app/src/domain/usecases/invest_treasury_direct_usecase.dart';
import 'package:invest_app/src/presentation/pages/treasury_direct/treasury_direct_stores.dart';

class TreasuryDirectDetailsController extends GetxController {
  final TreasuryDirectStores _treasuryDirectStores;
  final IInvestTreasuryDirectUsecase _investTreasuryDirectUsecase;
  late final TreasuryDirectProduct product;
  RxBool isLoading = RxBool(false);

  TreasuryDirectDetailsController({
    required IInvestTreasuryDirectUsecase investTreasuryDirectUsecase,
    required TreasuryDirectStores treasuryDirectStores,
  })  : _investTreasuryDirectUsecase = investTreasuryDirectUsecase,
        _treasuryDirectStores = treasuryDirectStores;

  @override
  void onInit() {
    super.onInit();
    product = _treasuryDirectStores.selectedProduct!;
  }

  @override
  void onClose() {
    super.onClose();
    _treasuryDirectStores.selectedProduct = null;
  }

  Future<void> invest() async {
    try {
      isLoading.value = true;

      var investment = TreasuryDirectInvestment(
        value: product.value,
        quantity: 1,
        productId: product.id,
      );

      await _investTreasuryDirectUsecase.execute(investment);

      await Future.delayed(const Duration(seconds: 2));
    } catch (e) {
      print(e);
    } finally {
      Get.toNamed(AppRoutes.investmentResult);
    }
  }
}
