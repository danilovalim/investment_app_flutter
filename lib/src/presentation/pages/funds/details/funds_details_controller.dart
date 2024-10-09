import 'package:get/get.dart';
import 'package:invest_app/src/core/routes/app_routes.dart';
import 'package:invest_app/src/domain/entities/fund_product.dart';
import 'package:invest_app/src/domain/entities/funds_investment.dart';
import 'package:invest_app/src/domain/usecases/invest_funds_usecase.dart';
import 'package:invest_app/src/presentation/pages/funds/funds_stores.dart';

class FundsDetailsController extends GetxController {
  final IInvestFundsUsecase _investFundsUsecase;
  final FundsStores _fundsStores;
  late final FundProduct product;
  RxBool isLoading = RxBool(false);

  FundsDetailsController({
    required FundsStores fundsStores,
    required IInvestFundsUsecase investFundsUsecase,
  })  : _fundsStores = fundsStores,
        _investFundsUsecase = investFundsUsecase;

  @override
  void onInit() {
    super.onInit();
    product = _fundsStores.selectedProduct!;
  }

  @override
  void onClose() {
    super.onClose();
    _fundsStores.selectedProduct = null;
  }

  Future<void> invest() async {
    try {
      isLoading.value = true;

      var investment = FundsInvestment(
        value: product.value,
        quantity: 1,
        productId: product.id,
        isQualified: true,
        scheduleInvestment: false,
      );

      await _investFundsUsecase.execute(investment);

      await Future.delayed(const Duration(seconds: 2));
    } catch (e) {
      print(e);
    } finally {
      Get.toNamed(AppRoutes.investmentResult);
    }
  }
}
