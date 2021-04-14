import 'package:consultorio_quiropractico/controllers/cita_controller.dart';
import 'package:consultorio_quiropractico/data/provider/consultorio_provider.dart';
import 'package:consultorio_quiropractico/data/repository/consultorio_repository.dart';
import 'package:get/get.dart';
import 'package:consultorio_quiropractico/data/repository/cita_repository.dart';
import 'package:consultorio_quiropractico/data/provider/cita_provider.dart';

class CitaBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CitaController>(() => CitaController());
    Get.lazyPut<CitaRepository>(() => CitaRepository());
    Get.lazyPut<ConsultorioRepository>(() => ConsultorioRepository());
    Get.lazyPut<CitaApiClient>(() => CitaApiClient());
    Get.lazyPut<ConsultorioApiClient>(() => ConsultorioApiClient());
  }
}
