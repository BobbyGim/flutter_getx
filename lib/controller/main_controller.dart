import 'package:get/get.dart';

class MainController extends GetxController {
  // 제목
  RxString title = "title".tr.obs;

  RxInt navBarIdx = 0.obs;

  void onChangeNavBar(int idx) {
    if (navBarIdx != idx) {
      navBarIdx(idx);

      switch (idx) {
        case 1:
          title("post.title".tr);
          break;
        case 2:
          title("photo.title".tr);
          break;
        default:
          title("title".tr);
          break;
      }
    }
  }
}
