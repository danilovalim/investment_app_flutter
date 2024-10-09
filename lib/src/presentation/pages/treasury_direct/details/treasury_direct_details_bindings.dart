import 'package:get/get.dart';
import 'package:invest_app/src/data/usecases/invest_treasury_direct_usecase.dart';
import 'package:invest_app/src/domain/usecases/invest_treasury_direct_usecase.dart';
import 'package:invest_app/src/presentation/pages/treasury_direct/details/treasury_direct_details_controller.dart';

class TreasuryDirectDetailsBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IInvestTreasuryDirectUsecase>(
      () => InvestTreasuryDirectUsecase(
        repository: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<TreasuryDirectDetailsController>(
      () => TreasuryDirectDetailsController(
        treasuryDirectStores: Get.find(),
        investTreasuryDirectUsecase: Get.find(),
      ),
      fenix: true,
    );
  }
}
