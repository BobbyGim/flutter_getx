import 'package:get/get.dart';
import 'package:getx/controller/post_controller.dart';

class PostDetailBind implements Bindings {
  @override
  void dependencies() {
    Get.put(PostController());
  }
}
