import 'package:get/get.dart';
import 'package:invest_app/src/data/usecases/invest_funds_usecase.dart';
import 'package:invest_app/src/domain/usecases/invest_funds_usecase.dart';
import 'package:invest_app/src/presentation/pages/funds/details/funds_details_controller.dart';

class FundsDetailsBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IInvestFundsUsecase>(
      () => InvestFundsUsecase(
        repository: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<FundsDetailsController>(
      () => FundsDetailsController(
        fundsStores: Get.find(),
        investFundsUsecase: Get.find(),
      ),
      fenix: true,
    );
  }
}
