import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/main_controller.dart';
import 'package:getx/router/router_info.dart';

class MainScreen extends GetView<MainController> {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(color: Colors.red),
          centerTitle: false,
          title: Obx(
            () => Text(
              controller.title.value,
              textAlign: TextAlign.right,
            ),
          ),
          actions: [TextButton(onPressed: () {}, child: Icon(Icons.menu))],
        ),
        body: SafeArea(
          child: PageTransitionSwitcher(
            transitionBuilder: (Widget child, Animation<double> anim,
                Animation<double> secondAnim) {
              return FadeThroughTransition(
                animation: anim,
                secondaryAnimation: secondAnim,
                child: child,
              );
            },
            child:
                Obx(() => RouterInfo.navBarPages[controller.navBarIdx.value]),
          ),
        ),
        bottomNavigationBar: Obx(
          () => NavigationBar(
            selectedIndex: controller.navBarIdx.value,
            onDestinationSelected: controller.onChangeNavBar,
            destinations: [
              NavigationDestination(
                icon: const Icon(
                  Icons.home_filled,
                ),
                label: "navBar.home".tr,
              ),
              NavigationDestination(
                icon: const Icon(Icons.list_alt),
                label: "navBar.post".tr,
              ),
              NavigationDestination(
                icon: const Icon(Icons.photo),
                label: "navBar.photo".tr,
              ),
            ],
          ),
        ));
  }
}
