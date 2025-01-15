import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/post_controller.dart';

class PostDetailScreen extends GetView<PostController> {
  const PostDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("post.detail.title".tr),
      ),
      body: SafeArea(
        child: Obx(
          () => _detail(),
        ),
      ),
    );
  }

  Widget _detail() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              controller.postDetail.value.title,
              style: TextStyle(
                color: Get.theme.colorScheme.primary,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              height: 48,
            ),
            Text(controller.postDetail.value.body),
          ],
        ),
      ),
    );
  }
}
