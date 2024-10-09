import 'package:get/get.dart';
import 'package:invest_app/src/core/routes/app_routes.dart';

class HomeController extends GetxController {
  void openTreasuryDirectProductsPage(){
    Get.toNamed(AppRoutes.treasuryDirect);
  }

  void openFixedIncomeProductsPage(){
    Get.toNamed(AppRoutes.fixedIncome);
  }

  void openFundsProductsPage(){
    Get.toNamed(AppRoutes.funds);
  }
}
