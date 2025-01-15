import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/common/code_info.dart';
import 'package:getx/dao/post_dao.dart';
import 'package:getx/dto/post_bean.dart';
import 'package:getx/router/router_info.dart';

class PostController extends GetxController {
  RxBool isLoading = false.obs;

  RxList<PostDTO> posts = <PostDTO>[].obs;

  Rx<PostDTO> postDetail = PostDTO().obs;

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
        List<PostDTO> list = result["list"];
        posts.clear();
        posts.addAll(list);
      }
    } catch (err) {}

    isLoading(false);
  }

  Future<void> toPostDetail(int id) async {
    isLoading(true);

    try {
      Map<String, dynamic> result = await PostDao.to.getDetailPost(id);

      CodeInfo code = result["code"];
      PostDTO dto = result["dto"];

      if (code == CodeInfo.ok && dto.id >= 0) {
        postDetail(dto);

        Get.toNamed(RouterInfo.PostDetail);
      } else {
        Get.snackbar(
          "err.title.info".tr,
          "err.try".tr,
          icon: Icon(Icons.error),
        );
      }
    } catch (err) {
      Get.snackbar(
        "err.title.error".tr,
        "err.try".tr,
        icon: Icon(Icons.error),
      );
    }

    isLoading(false);
  }
}
