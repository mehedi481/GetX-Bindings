import 'package:get/get.dart';
import 'package:getx_binding/controller/homeController/homeController.dart';

class HomeBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>HomePageController());
  }

}