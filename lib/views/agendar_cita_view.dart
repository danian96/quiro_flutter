import 'package:consultorio_quiropractico/data/model/consultorio_model.dart';
import 'package:consultorio_quiropractico/global/constants.dart';
import 'package:consultorio_quiropractico/controllers/cita_controller.dart';
import 'package:consultorio_quiropractico/global/widgets/general.dart';
import 'package:consultorio_quiropractico/routes/app_routes.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AgendarCitaView extends GetView<CitaController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agendar Cita'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SizedBox.expand(
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                child: todo(context),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget todo(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Obx(
              () => ListView.builder(
                itemCount: controller.listaDeConsultorios.length,
                itemBuilder: (context, index) {
                  Consultorio consultorio =
                      controller.listaDeConsultorios[index];
                  String quiropractico = consultorio.nombre_quiro +
                      " " +
                      consultorio.apellido_paterno_quiro +
                      " " +
                      consultorio.apellido_paterno_quiro;
                  return instalaciones(
                      context,
                      consultorio.nombre,
                      quiropractico,
                      consultorio.telefono,
                      consultorio.ubicacion,
                      consultorio.email);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget instalaciones(BuildContext context, String nombre,
      String quiropractico, String telefono, String ubicacion, String correo) {
    return Container(
      width: 260,
      height: 360,
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Column(
        children: <Widget>[
          negritaText(
              nombre, Colors.black, FontStyle.normal, 22, TextAlign.left),
          generalText(quiropractico, Colors.black, FontStyle.normal, 20,
              TextAlign.center),
          generalText(
              telefono, Colors.black, FontStyle.normal, 18, TextAlign.left),
          generalText(
              ubicacion, Colors.black, FontStyle.normal, 18, TextAlign.left),
          generalText(
              correo, Colors.black, FontStyle.normal, 18, TextAlign.left),
          espacio(10),
          botonGeneralRedirect(context, "Agendar cita", Routes.AGENDAR_CITA,
              Colors.amber, Colors.black)
        ],
      ),
    );
  }
}
