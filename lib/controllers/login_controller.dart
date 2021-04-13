import 'package:consultorio_quiropractico/data/model/auth_model.dart';
import 'package:consultorio_quiropractico/data/repository/auth_repository.dart';
import 'package:consultorio_quiropractico/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  final repository = Get.find<AuthRepository>();
  late Auth auth;
  final formKey = GlobalKey<FormState>();
  TextEditingController usernameCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  final box = GetStorage('consultorioapp');

  RxBool showPassword = false.obs;
  RxBool loading = false.obs;

  void login() async {
    if (formKey.currentState!.validate()) {
      loading.value = true;
      await repository.login(usernameCtrl.text, passwordCtrl.text).then((auth) {
        box.write('auth', auth);
        Get.offAllNamed(Routes.CITAS);
        loading.value = false;
      }).catchError((err) {
        loading.value = false;
      });
    }
  }
}
