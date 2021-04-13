import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:consultorio_quiropractico/global/constants.dart';

class AuthApiClient extends GetConnect {
  Future<Map<String, dynamic>> login(String email, String password) async {
    var response = await post(
        baseUrl + "/login", {"email": email, "contraseña": password});
    if (response.statusCode == 200) {
      return response.body;
    } else {
      Get.defaultDialog(
          title: "Login", content: Text("Email o contraseña incorrectos."));
      return response.body;
    }
  }
}
