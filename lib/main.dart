import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/bind/init_bind.dart';
import 'package:getx/common/theme.dart';
import 'package:getx/common/translations_info.dart';
import 'package:getx/router/router_info.dart';

void main() {
  runApp(
    GetMaterialApp(
      initialRoute: RouterInfo.Home,
      initialBinding: InitBind(),
      getPages: RouterInfo.pages,
      defaultTransition: Transition.cupertino,
      debugShowCheckedModeBanner: false,
      translations: TranslationsInfo(),
      locale: Get.deviceLocale,
      fallbackLocale: Locale("en", "US"),
      themeMode: ThemeMode.system,
      theme: ThemeData(
        colorScheme: MaterialTheme.lightScheme(),
        useMaterial3: true,
        fontFamily: "NanumGothic",
      ),
      darkTheme: ThemeData(
        colorScheme: MaterialTheme.darkScheme(),
        useMaterial3: true,
        fontFamily: "NanumGothic",
      ),
    ),
  );
}
