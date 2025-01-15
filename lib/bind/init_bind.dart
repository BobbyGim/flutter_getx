import 'package:get/get.dart';
import 'package:getx/controller/main_controller.dart';
import 'package:getx/controller/home_controller.dart';
import 'package:getx/controller/photo_controller.dart';
import 'package:getx/controller/post_controller.dart';

class InitBind implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(MainController());

    Get.put(HomeController());

    Get.put(PostController());

    Get.put(PhotoController());
  }
}
