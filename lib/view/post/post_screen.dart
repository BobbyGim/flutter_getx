import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/components/loading_widget.dart';
import 'package:getx/controller/post_controller.dart';

class PostScreen extends GetView<PostController> {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            _posts(),
            Obx(() => LoadingWidget(
                  isViaible: controller.isLoading.value,
                ))
          ],
        ),
      ),
    );
  }

  Widget _posts() {
    return ListView.separated(
      itemCount: controller.posts.length,
      itemBuilder: (BuildContext context, int idx) {
        return InkWell(
          child: ListTile(
            leading: Icon(Icons.article_outlined),
            title: Text(
              controller.posts[idx].title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          onTap: () {
            controller.toPostDetail(controller.posts[idx].id);
          },
        );
      },
      separatorBuilder: (BuildContext context, int idx) {
        return Divider();
      },
    );
  }
}
