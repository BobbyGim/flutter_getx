import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/common/const.dart';
import 'package:getx/components/loading_widget.dart';
import 'package:getx/controller/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Card(
                  margin: EdgeInsets.all(gMargin),
                  child: Padding(
                    padding: const EdgeInsets.all(gPadding),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/img/flutter.png",
                          width: 24,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Text("home.card.1".tr),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(16),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FlutterLogo(),
                          SizedBox(
                            height: 16,
                          ),
                          Text("home.card.2".tr),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(16),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.flutter_dash,
                            color: Colors.lightBlue,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "home.card.3".tr,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Obx(
              () => LoadingWidget(
                isViaible: controller.isLoading.value,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
