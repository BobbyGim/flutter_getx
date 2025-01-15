import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';
import 'package:getx/api/api_info.dart';
import 'package:getx/common/code_info.dart';
import 'package:getx/dto/photo_dto.dart';

class PhotoDao extends GetConnect {
  static PhotoDao get to => Get.put(PhotoDao());

  @override
  void onInit() {
    super.onInit();

    httpClient.baseUrl = ApiInfo.rootPhotoUrl;
    httpClient.defaultContentType = "application/x-www-form-urlencoded";
    httpClient.addRequestModifier(
      (Request request) {
        request.headers["Accept"] = "application/json";

        return request;
      },
    );
  }

  Future<Map<String, dynamic>> getPhotos() async {
    Map<String, dynamic> resultMap = <String, dynamic>{};

    CodeInfo code = CodeInfo.ok;

    List<PhotoDto> list = [];

    try {
      final Response res = await get("/v2/list?page=2&limit=10");

      print("dao $code");

      if (res.statusCode == HttpStatus.ok) {
        print("${res.body}");
        list =
            res.body.map<PhotoDto>((json) => PhotoDto.fromJson(json)).toList();
      } else {
        code = CodeInfo.err;
      }
    } catch (err) {
      code = CodeInfo.err;
    }

    resultMap["code"] = code;
    resultMap["list"] = list;

    return resultMap;
  }
}
