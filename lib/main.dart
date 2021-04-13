import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:consultorio_quiropractico/routes/app_pages.dart';
import 'package:consultorio_quiropractico/routes/app_routes.dart';

void main() async {
  runApp(GetMaterialApp(
    title: 'App Name',
    debugShowCheckedModeBanner: false,
    getPages: AppPages.routes,
    initialRoute: Routes.HOME,
    themeMode: ThemeMode.system,
  ));
}
