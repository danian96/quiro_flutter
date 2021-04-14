import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:consultorio_quiropractico/global/constants.dart';

class ConsultorioApiClient extends GetConnect {
  getAll() async {
    var response = await post(baseUrl + "/consultorios", {});

    if (response.hasError) {
      Get.defaultDialog(
          title: "Error Catch", content: Text("${response.statusText}"));
    }

    if (response.statusCode == 200) {
      return response.body;
    } else {
      Get.defaultDialog(
          title: "Error", content: Text("${response.body['error']}"));
      return null;
    }
  }
}
