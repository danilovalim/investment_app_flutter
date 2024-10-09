import 'package:get/get.dart';
import 'package:invest_app/src/data/usecases/invest_fixed_income_usecase.dart';
import 'package:invest_app/src/domain/usecases/invest_fixed_income_usecase.dart';
import 'package:invest_app/src/presentation/pages/fixed_income/details/fixed_income_details_controller.dart';

class FixedIncomeDetailsBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IInvestFixedIncomeUsecase>(
      () => InvestFixedIncomeUsecase(
        repository: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<FixedIncomeDetailsController>(
      () => FixedIncomeDetailsController(
        investFixedIncomeUsecase: Get.find(),
        fixedIncomeStores: Get.find(),
      ),
      fenix: true,
    );
  }
}
