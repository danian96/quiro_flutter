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

  edit(id_cita, fecha, hora) async {
    var response = await post(baseUrl + "/editar_cita/" + id_cita,
        {'fecha_cita': fecha, 'hora': hora});
    if (response.statusCode == 200) {
      return response.body;
    } else {
      Get.defaultDialog(
          title: "Citas", content: Text("Ocurrio un problema inesperado."));
      return response.body;
    }
  }

  insertar(nombre, ap_paterno, ap_materno, edad, email, sexo, telefono,
      fecha_cita, hora) async {
    var response = await post(baseUrl + "/insertar_paciente/", {
      'nombre': nombre,
      'Ap_paterno': ap_paterno,
      'Ap_materno': ap_materno,
      'edad': edad,
      'email': email,
      'sexo': sexo,
      'telefono': telefono,
      'fecha_cita': fecha_cita,
      'hora': hora
    });
    if (response.statusCode == 200) {
      return response;
    } else {
      Get.defaultDialog(
          title: "Citas", content: Text("Ocurrio un problema inesperado."));
      return response.body;
    }
  }
}
