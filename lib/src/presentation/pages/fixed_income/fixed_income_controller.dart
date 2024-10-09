import 'package:get/get.dart';
import 'package:invest_app/src/core/routes/app_routes.dart';
import 'package:invest_app/src/domain/entities/fixed_income_product.dart';
import 'package:invest_app/src/domain/usecases/get_fixed_income_products_usecase.dart';
import 'package:invest_app/src/presentation/pages/fixed_income/fixed_income_stores.dart';

class FixedIncomeController extends GetxController {
  final IGetFixedIncomeProductsUsecase _getFixedIncomeProductsUsecase;
  final FixedIncomeStores _fixedIncomeStores;
  RxBool isLoading = RxBool(true);
  List<FixedIncomeProduct> products = [];

  FixedIncomeController({
    required IGetFixedIncomeProductsUsecase getFixedIncomeProductsUsecase,
    required FixedIncomeStores fixedIncomeStores,
  })  : _getFixedIncomeProductsUsecase = getFixedIncomeProductsUsecase,
        _fixedIncomeStores = fixedIncomeStores;

  void openProductDetailsPage(FixedIncomeProduct product) {
    _fixedIncomeStores.selectedProduct = product;
    Get.toNamed(AppRoutes.fixedIncomeDetails);
  }

  Future<void> getProducts() async {
    try {
      products = await _getFixedIncomeProductsUsecase.execute();
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
