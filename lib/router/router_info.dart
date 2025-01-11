import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/home/home_screen.dart';
import 'package:getx/view/main_screen.dart';
import 'package:getx/view/photo/photo_screen.dart';
import 'package:getx/view/post/post_screen.dart';

class RouterInfo {
  static const String home = "/";

  static List<GetPage> pages = [
    GetPage(name: home, page: () => const MainScreen()),
  ];

  static List<Widget> navBarPages = const [
    HomeScreen(),
    PostScreen(),
    PhotoScreen(),
  ];
}
