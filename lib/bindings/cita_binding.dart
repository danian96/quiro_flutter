import 'package:consultorio_quiropractico/controllers/cita_controller.dart';
import 'package:get/get.dart';
import 'package:consultorio_quiropractico/data/repository/cita_repository.dart';
import 'package:consultorio_quiropractico/data/provider/cita_provider.dart';

class CitaBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CitaController>(() => CitaController());
    Get.lazyPut<CitaRepository>(() => CitaRepository());
    Get.lazyPut<CitaApiClient>(() => CitaApiClient());
  }
}
