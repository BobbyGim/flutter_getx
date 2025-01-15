import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/bind/post_detail_bind.dart';
import 'package:getx/view/home/home_screen.dart';
import 'package:getx/view/main_screen.dart';
import 'package:getx/view/photo/photo_screen.dart';
import 'package:getx/view/post/post_detail_screen.dart';
import 'package:getx/view/post/post_screen.dart';

class RouterInfo {
  static const String Home = "/";
  static const String PostDetail = "/post/detail";

  static List<GetPage> pages = [
    GetPage(name: Home, page: () => const MainScreen()),
    GetPage(
      name: PostDetail,
      page: () => const PostDetailScreen(),
      binding: PostDetailBind(),
    )
  ];

  static List<Widget> navBarPages = const [
    HomeScreen(),
    PostScreen(),
    PhotoScreen(),
  ];
}
