import 'package:get/get.dart';

class TranslationsInfo extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "en_US": enUS,
        "ko": ko,
      };

  final Map<String, String> enUS = {
    "title": "Flutter GetX",
    'posts.title': "Post",
    'photo.title': "photo",
    "navBar.home": "Home",
    "navBar.post": "Post",
    "navBar.photo": "Photo",
    "home.card.1": "Build for any screen",
    "home.card.2":
        "Flutter transforms the development process. Build, test, and deploy beautiful mobile, web, desktop, and embedded experiences from a single codebase.",
    "home.card.3":
        "Flutter is an open source framework for building beautiful, natively compiled, multi-platform applications from a single codebase.",
  };

  final Map<String, String> ko = {
    "title": "플러터 GetX",
    'posts.title': "포스트",
    'photo.title': "사진첩",
    "navBar.home": "홈",
    "navBar.post": "포스트",
    "navBar.photo": "사진",
    "home.card.1": "Build for any screen",
    "home.card.2":
        "Flutter transforms the development process. Build, test, and deploy beautiful mobile, web, desktop, and embedded experiences from a single codebase.",
    "home.card.3":
        "Flutter is an open source framework for building beautiful, natively compiled, multi-platform applications from a single codebase.",
  };
}
