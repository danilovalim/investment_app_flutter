import 'package:get/get.dart';
import 'package:invest_app/src/data/datasources/funds_datasource.dart';
import 'package:invest_app/src/data/repositories/funds_repository.dart';
import 'package:invest_app/src/data/usecases/get_funds_products_usecase.dart';
import 'package:invest_app/src/domain/repositories/funds_repository.dart';
import 'package:invest_app/src/domain/usecases/get_funds_products_usecase.dart';
import 'package:invest_app/src/infra/datasources/funds_datasource.dart';
import 'package:invest_app/src/presentation/pages/funds/funds_controller.dart';
import 'package:invest_app/src/presentation/pages/funds/funds_stores.dart';

class FundsBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FundsStores>(
      () => FundsStores(),
      fenix: true,
    );
    Get.lazyPut<IFundsDatasource>(
      () => FundsDatasource(),
      fenix: true,
    );
    Get.lazyPut<IFundsRepository>(
      () => FundsRepository(
        datasource: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<IGetFundsProductsUsecase>(
      () => GetFundsProductsUsecase(
        repository: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<FundsController>(
      () => FundsController(
        getFundsProductsUsecase: Get.find(),
        fundsStores: Get.find(),
      ),
      fenix: true,
    );
  }
}
