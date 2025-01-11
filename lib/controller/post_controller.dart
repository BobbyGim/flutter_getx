import 'package:get/get.dart';
import 'package:getx/common/code_info.dart';
import 'package:getx/dao/post_dao.dart';
import 'package:getx/dto/post_bean.dart';

class PostController extends GetxController {
  RxBool isLoading = false.obs;

  RxList<PostBean> posts = <PostBean>[].obs;

  @override
  void onInit() {
    super.onInit();

    _getPosts();
  }

  Future<void> _getPosts() async {
    isLoading(true);

    try {
      Map<String, dynamic> result = await PostDao.to.getPosts();

      CodeInfo code = result["code"];

      if (code == CodeInfo.ok) {
        List<PostBean> list = result["list"];
        posts.clear();
        posts.addAll(list);
      }
    } catch (err) {}

    isLoading(false);
  }
}
