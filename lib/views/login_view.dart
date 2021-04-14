import 'package:consultorio_quiropractico/controllers/login_controller.dart';
import 'package:consultorio_quiropractico/global/widgets/general.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:consultorio_quiropractico/global/widgets//background.dart';
import 'package:consultorio_quiropractico/global/widgets/rounded_button.dart';
import 'package:consultorio_quiropractico/global/widgets/rounded_input_field.dart';
import 'package:consultorio_quiropractico/global/widgets/rounded_password_field.dart';

class LoginView extends GetView<LoginController> {
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
                  "ENTRAR",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: Get.height * 0.03),
                RoundedInputField(
                  hintText: "Usuário",
                  controller: controller.usernameCtrl,
                  onChanged: (value) {},
                ),
                Obx(
                  () => RoundedPasswordField(
                    showPassword: controller.showPassword.value,
                    changeShowPassword: () {
                      controller.showPassword.value =
                          !controller.showPassword.value;
                    },
                    controller: controller.passwordCtrl,
                    onChanged: (value) {},
                  ),
                ),
                Obx(
                  () => Visibility(
                    visible: !controller.loading.value,
                    child: RoundedButton(
                      text: "ENTRAR",
                      press: () {
                        controller.login();
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
