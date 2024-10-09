import 'package:get/get.dart';
import 'package:invest_app/src/core/routes/app_routes.dart';
import 'package:invest_app/src/domain/entities/fixed_income_investment.dart';
import 'package:invest_app/src/domain/entities/fixed_income_product.dart';
import 'package:invest_app/src/domain/usecases/invest_fixed_income_usecase.dart';
import 'package:invest_app/src/presentation/pages/fixed_income/fixed_income_stores.dart';

class FixedIncomeDetailsController extends GetxController {
  final FixedIncomeStores _fixedIncomeStores;
  final IInvestFixedIncomeUsecase _investFixedIncomeUsecase;
  late final FixedIncomeProduct product;
  RxBool isLoading = RxBool(false);

  FixedIncomeDetailsController({
    required FixedIncomeStores fixedIncomeStores,
    required IInvestFixedIncomeUsecase investFixedIncomeUsecase,
  })  : _fixedIncomeStores = fixedIncomeStores,
        _investFixedIncomeUsecase = investFixedIncomeUsecase;

  Future<void> invest() async {
    try {
      isLoading.value = true;

      var investment = FixedIncomeInvestment(
        value: product.value,
        quantity: 1,
        productId: product.id,
      );

      await _investFixedIncomeUsecase.execute(investment);

      await Future.delayed(const Duration(seconds: 2));
    } catch (e) {
      print(e);
    } finally {
      Get.toNamed(AppRoutes.investmentResult);
    }
  }

  @override
  void onInit() {
    super.onInit();
    product = _fixedIncomeStores.selectedProduct!;
  }

  @override
  void onClose() {
    super.onClose();
    _fixedIncomeStores.selectedProduct = null;
  }
}
