import 'package:get/get.dart';
import 'package:invest_app/src/core/routes/app_routes.dart';
import 'package:invest_app/src/domain/entities/treasury_direct_product.dart';
import 'package:invest_app/src/domain/usecases/get_treasury_direct_products_usecase.dart';
import 'package:invest_app/src/presentation/pages/treasury_direct/treasury_direct_stores.dart';

class TreasuryDirectController extends GetxController {
  final TreasuryDirectStores _treasuryDirectStores;
  final IGetTreasuryDirectProductsUsecase _getTreasuryDirectProductsUsecase;

  RxBool isLoading = RxBool(true);
  List<TreasuryDirectProduct> products = [];

  TreasuryDirectController({
    required TreasuryDirectStores treasuryDirectStores,
    required IGetTreasuryDirectProductsUsecase getTreasuryDirectProductsUsecase,
  })  : _treasuryDirectStores = treasuryDirectStores,
        _getTreasuryDirectProductsUsecase = getTreasuryDirectProductsUsecase;

  Future<void> getProducts() async {
    try {
      products = await _getTreasuryDirectProductsUsecase.execute();
      await Future.delayed(const Duration(seconds: 2));
    } catch (e) {
      print(e);
    } finally {
      isLoading.value = false;
    }
  }

  void openProductDetailsPage(TreasuryDirectProduct product) {
    _treasuryDirectStores.selectedProduct = product;
    Get.toNamed(AppRoutes.treasuryDirectDetails);
  }

  @override
  void onInit() {
    super.onInit();
    getProducts();
  }
}
