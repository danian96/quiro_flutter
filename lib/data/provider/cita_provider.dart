import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:consultorio_quiropractico/global/constants.dart';

class CitaApiClient extends GetConnect {
  getAll() async {
    var response = await post(baseUrl + "/citas", {});
    if (response.statusCode == 200) {
      return response.body;
    } else {
      Get.defaultDialog(
          title: "Citas", content: Text("Ocurrio un problema inesperado."));
      return response.body;
    }
  }

  eliminar(id_cita) async {
    var response = await post(baseUrl + "/eliminar_cita/" + id_cita, {});
    if (response.statusCode == 200) {
      return response.body;
    } else {
      Get.defaultDialog(
          title: "Citas", content: Text("Ocurrio un problema inesperado."));
      return response.body;
    }
  }
}
