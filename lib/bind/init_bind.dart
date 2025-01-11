import 'package:get/get.dart';
import 'package:getx/components/main_controller.dart';

class InitBind implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(MainController());
  }
}
