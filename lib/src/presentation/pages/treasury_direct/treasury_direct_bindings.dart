import 'package:get/get.dart';
import 'package:invest_app/src/data/datasources/treasury_direct_datasource.dart';
import 'package:invest_app/src/data/repositories/treasury_direct_repository.dart';
import 'package:invest_app/src/data/usecases/get_treasury_direct_products_usecase.dart';
import 'package:invest_app/src/domain/repositories/treasury_direct_repository.dart';
import 'package:invest_app/src/domain/usecases/get_treasury_direct_products_usecase.dart';
import 'package:invest_app/src/infra/datasources/treasury_direct_datasource.dart';
import 'package:invest_app/src/presentation/pages/treasury_direct/treasury_direct_controller.dart';
import 'package:invest_app/src/presentation/pages/treasury_direct/treasury_direct_stores.dart';

class TreasuryDirectBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TreasuryDirectStores>(
      () => TreasuryDirectStores(),
      fenix: true,
    );
    Get.lazyPut<ITreasuryDirectDatasource>(
      () => TreasuryDirectDatasource(),
      fenix: true,
    );
    Get.lazyPut<ITreasuryDirectRepository>(
      () => TreasuryDirectRepository(
        datasource: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<IGetTreasuryDirectProductsUsecase>(
      () => GetTreasuryDirectProductsUsecase(
        directRepository: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<TreasuryDirectController>(
      () => TreasuryDirectController(
        getTreasuryDirectProductsUsecase: Get.find(),
        treasuryDirectStores: Get.find(),
      ),
      fenix: true,
    );
  }
}
