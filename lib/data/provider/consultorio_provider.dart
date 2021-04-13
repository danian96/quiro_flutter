import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConsultorioApiClient extends GetConnect {
  getAll() async {
    var response = await get("http://localhost:8000/api/consultorios");

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
