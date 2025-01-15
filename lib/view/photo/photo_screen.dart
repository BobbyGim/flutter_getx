import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/components/loading_widget.dart';
import 'package:getx/controller/photo_controller.dart';

class PhotoScreen extends GetView<PhotoController> {
  const PhotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print(controller.photos.toList());
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            _photos(),
            Obx(() => LoadingWidget(isViaible: controller.isLoading.value))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar("add", "Photo", icon: Icon(Icons.add_a_photo_outlined));
        },
        child: Icon(
          Icons.add_a_photo_outlined,
          color: Colors.white,
        ),
        backgroundColor: Colors.indigoAccent,
      ),
    );
  }

  Widget _photos() {
    return Obx(
      () => GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: controller.photos.length,
        itemBuilder: (BuildContext context, int idx) {
          return InkWell(
            child: Card(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  controller.photos[idx].downloadUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            onTap: () {
              controller.showPhoto(idx);
            },
          );
        },
      ),
    );
  }
}
