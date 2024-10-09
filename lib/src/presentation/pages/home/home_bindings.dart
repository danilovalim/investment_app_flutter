import 'package:get/get.dart';
import 'package:invest_app/src/presentation/pages/home/home_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
      fenix: true,
    );
  }
}
