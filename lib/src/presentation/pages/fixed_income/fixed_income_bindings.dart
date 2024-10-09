import 'package:get/get.dart';
import 'package:invest_app/src/data/datasources/fixed_income_datasource.dart';
import 'package:invest_app/src/data/repositories/fixed_income_repository.dart';
import 'package:invest_app/src/data/usecases/get_fixed_income_products_usecase.dart';
import 'package:invest_app/src/domain/repositories/fixed_income_repository.dart';
import 'package:invest_app/src/domain/usecases/get_fixed_income_products_usecase.dart';
import 'package:invest_app/src/infra/datasources/fixed_income_datasource.dart';
import 'package:invest_app/src/presentation/pages/fixed_income/fixed_income_controller.dart';
import 'package:invest_app/src/presentation/pages/fixed_income/fixed_income_stores.dart';

class FixedIncomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FixedIncomeStores>(
      () => FixedIncomeStores(),
      fenix: true,
    );
    Get.lazyPut<IFixedIncomeDatasource>(
      () => FixedIncomeDatasource(),
      fenix: true,
    );
    Get.lazyPut<IFixedIncomeRepository>(
      () => FixedIncomeRepository(
        datasource: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<IGetFixedIncomeProductsUsecase>(
      () => GetFixedIncomeProductsUsecase(
        repository: Get.find(),
      ),
      fenix: true,
    );
    Get.lazyPut<FixedIncomeController>(
      () => FixedIncomeController(
        getFixedIncomeProductsUsecase: Get.find(),
        fixedIncomeStores: Get.find(),
      ),
      fenix: true,
    );
  }
}
