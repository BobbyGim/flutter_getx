import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/common/code_info.dart';
import 'package:getx/dao/photo_dao.dart';
import 'package:getx/dto/photo_dto.dart';

class PhotoController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<PhotoDto> photos = <PhotoDto>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    _getPhotos();
    super.onInit();
  }

  Future<void> _getPhotos() async {
    isLoading(true);

    try {
      Map<String, dynamic> result = await PhotoDao.to.getPhotos();

      CodeInfo code = result["code"];

      if (code == CodeInfo.ok) {
        List<PhotoDto> list = result["list"];
        // photos.clear();
        photos.addAll(list);
      } else {
        code == CodeInfo.err;
      }
    } catch (err) {}

    isLoading(false);
  }

  void showPhoto(int idx) {
    Get.dialog(
      AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              photos[idx].downloadUrl,
            ),
            SizedBox(
              height: 16,
            ),
            Icon(Icons.person),
            Text(photos[idx].author),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: Icon(Icons.close),
          ),
        ],
      ),
    );
  }
}
