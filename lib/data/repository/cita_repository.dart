import 'package:consultorio_quiropractico/data/model/cita_model.dart';
import 'package:consultorio_quiropractico/data/model/consultorio_model.dart';
import 'package:consultorio_quiropractico/data/provider/cita_provider.dart';
import 'package:consultorio_quiropractico/data/provider/consultorio_provider.dart';
import 'package:get/get.dart';

class CitaRepository {
  final CitaApiClient apiClient = Get.find<CitaApiClient>();

  getAll() async {
    List<Cita> list = <Cita>[];
    var response = await apiClient.getAll();
    if (response != null) {
      response.forEach((e) {
        print(Cita.fromJson(e).toJson());
        list.add(Cita.fromJson(e));
      });
    }
    return list;
  }

  eliminar(id_cita) async {
    var response = await apiClient.eliminar(id_cita);
    if (response != null) {
      print(response.body);
    }
    return response;
  }

  edit(id_cita, fecha, hora) async {
    var response = await apiClient.edit(id_cita, fecha, hora);
    if (response != null) {
      print(response.body);
    }
    return response;
  }

  insertar(nombre, ap_paterno, ap_materno, edad, email, sexo, telefono,
      fecha_cita, hora) async {
    var response = await apiClient.insertar(nombre, ap_paterno, ap_materno,
        edad, email, sexo, telefono, fecha_cita, hora);
    if (response != null) {
      print(response);
    }
    return response;
  }
}
