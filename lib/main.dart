import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:modul5/app/modules/create/controllers/create_controller.dart';

import 'app/routes/app_pages.dart';

void main() {
  Get.put(CreateController());
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
