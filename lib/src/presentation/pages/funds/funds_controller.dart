import 'package:get/get.dart';
import 'package:invest_app/src/core/routes/app_routes.dart';
import 'package:invest_app/src/domain/entities/fund_product.dart';
import 'package:invest_app/src/domain/usecases/get_funds_products_usecase.dart';
import 'package:invest_app/src/presentation/pages/funds/funds_stores.dart';

class FundsController extends GetxController {
  final IGetFundsProductsUsecase _getFundsProductsUsecase;
  final FundsStores _fundsStores;
  RxBool isLoading = RxBool(true);
  List<FundProduct> products = [];

  FundsController({
    required IGetFundsProductsUsecase getFundsProductsUsecase,
    required FundsStores fundsStores,
  })  : _getFundsProductsUsecase = getFundsProductsUsecase,
        _fundsStores = fundsStores;

  void openProductDetailsPage(FundProduct product) {
    _fundsStores.selectedProduct = product;
    Get.toNamed(AppRoutes.fundsDetails);
  }

  Future<void> getProducts() async {
    try {
      products = await _getFundsProductsUsecase.execute();
      await Future.delayed(const Duration(seconds: 2));
    } catch (e) {
      print(e);
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    getProducts();
  }
}
