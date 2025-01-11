import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool isLoading = true.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    _getData();
  }

  Future<void> _getData() async {
    isLoading(true);

    // get Data

    isLoading(false);
  }
}
