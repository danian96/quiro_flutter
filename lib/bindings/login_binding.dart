import 'package:consultorio_quiropractico/controllers/login_controller.dart';
import 'package:get/get.dart';
import 'package:consultorio_quiropractico/data/repository/auth_repository.dart';
import 'package:consultorio_quiropractico/data/provider/auth_provider.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<AuthRepository>(() => AuthRepository());
    Get.lazyPut<AuthApiClient>(() => AuthApiClient());
  }
}
