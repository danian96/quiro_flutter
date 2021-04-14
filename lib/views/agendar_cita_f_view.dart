import 'package:consultorio_quiropractico/controllers/cita_controller.dart';
import 'package:consultorio_quiropractico/controllers/login_controller.dart';
import 'package:consultorio_quiropractico/global/widgets/general.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:consultorio_quiropractico/global/widgets//background.dart';
import 'package:consultorio_quiropractico/global/widgets/rounded_button.dart';
import 'package:consultorio_quiropractico/global/widgets/rounded_input_field.dart';
import 'package:consultorio_quiropractico/global/widgets/rounded_password_field.dart';

class AgendarCitaFView extends GetView<CitaController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Form(
            key: controller.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Agendar Cita",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: Get.height * 0.03),
                RoundedInputField(
                  hintText: "Nombre",
                  controller: controller.nombreCtrl,
                  onChanged: (value) {},
                ),
                RoundedInputField(
                  hintText: "Apellido Paterno",
                  controller: controller.appCtrl,
                  onChanged: (value) {},
                ),
                RoundedInputField(
                  hintText: "Apellido Materno",
                  controller: controller.apmCtrl,
                  onChanged: (value) {},
                ),
                RoundedInputField(
                  hintText: "Edad",
                  controller: controller.edadCtrl,
                  onChanged: (value) {},
                ),
                RoundedInputField(
                  hintText: "Telefono",
                  controller: controller.tlfCtrl,
                  onChanged: (value) {},
                ),
                RoundedInputField(
                  hintText: "Email",
                  controller: controller.emailCtrl,
                  onChanged: (value) {},
                ),
                RoundedInputField(
                  hintText: "Sexo",
                  controller: controller.sexoCtrl,
                  onChanged: (value) {},
                ),
                ListTile(
                  leading: const Icon(Icons.date_range),
                  title: Text('Fecha'),
                  subtitle: TextFormField(
                    controller: controller.dateController,
                    showCursor: true,
                    readOnly: true,
                  ),
                  trailing: RaisedButton(
                    onPressed: () =>
                        controller.openCalendar(context), // Refer step 3
                    child: Text(
                      'Cambiar Fecha',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    color: Colors.black,
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.access_time),
                  title: Text('Hora'),
                  subtitle: TextFormField(
                    controller: controller.timeController,
                    showCursor: true,
                    readOnly: true,
                  ),
                  trailing: RaisedButton(
                    onPressed: () =>
                        controller.openClock(context), // Refer step 3
                    child: Text(
                      'Cambiar Hora',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    color: Colors.black,
                  ),
                ),
                Obx(
                  () => Visibility(
                    visible: !controller.loading.value,
                    child: RoundedButton(
                      text: "Agendar la Cita",
                      press: () {
                        controller.insertar();
                      },
                    ),
                  ),
                ),
                Obx(
                  () => Visibility(
                    visible: controller.loading.value,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      width: Get.width * 0.8,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(29),
                        // ignore: deprecated_member_use
                        child: FlatButton(
                          padding: EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 40,
                          ),
                          onPressed: null,
                          child: CircularProgressIndicator(),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: Get.height * 0.03),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget todo(BuildContext context) {
  //   return Container(
  //       decoration: BoxDecoration(
  //         image: DecorationImage(
  //           image: Image.asset(
  //             "espacio.jpeg",
  //           ).image,
  //           fit: BoxFit.cover,
  //         ),
  //       ),
  //       width: MediaQuery.of(context).size.width,
  //       height: MediaQuery.of(context).size.height,
  //       padding: EdgeInsets.only(
  //           top: MediaQuery.of(context).size.height * 0.2,
  //           left: 10,
  //           right: 10,
  //           bottom: 10),
  //       child: Column(
  //         children: <Widget>[
  //           Container(
  //             width: MediaQuery.of(context).size.width * 0.9,
  //             height: MediaQuery.of(context).size.height * 0.4,
  //             color: Color.fromRGBO(190, 190, 190, 1),
  //             child: Column(
  //               children: <Widget>[
  //                 espacio(35),
  //                 input(Icons.account_circle, "Email", controller.usernameCtrl,
  //                     false),
  //                 input(Icons.lock, "Password", controller.passwordCtrl, true),
  //                 Obx(
  //                   () => Visibility(
  //                     visible: !controller.loading.value,
  //                     child: RoundedButton(
  //                       text: "ENTRAR",
  //                       press: () {
  //                         controller.login();
  //                       },
  //                     ),
  //                   ),
  //                 ),
  //                 Obx(
  //                   () => Visibility(
  //                     visible: controller.loading.value,
  //                     child: Container(
  //                       margin: EdgeInsets.symmetric(vertical: 10),
  //                       width: Get.width * 0.8,
  //                       child: ClipRRect(
  //                         borderRadius: BorderRadius.circular(29),
  //                         // ignore: deprecated_member_use
  //                         child: FlatButton(
  //                           padding: EdgeInsets.symmetric(
  //                             vertical: 20,
  //                             horizontal: 40,
  //                           ),
  //                           onPressed: null,
  //                           child: CircularProgressIndicator(),
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           )
  //         ],
  //       ));
  // }
}
