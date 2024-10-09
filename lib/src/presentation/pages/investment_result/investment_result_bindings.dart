import 'package:get/get.dart';
import 'package:invest_app/src/presentation/pages/investment_result/investment_result_controller.dart';

class InvestmentResultBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InvestmentResultController>(
      () => InvestmentResultController(),
      fenix: true,
    );
  }
}
