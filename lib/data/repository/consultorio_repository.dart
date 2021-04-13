import 'package:consultorio_quiropractico/data/model/consultorio_model.dart';
import 'package:consultorio_quiropractico/data/provider/consultorio_provider.dart';
import 'package:get/get.dart';

class ConsultorioRepository {
  final ConsultorioApiClient apiClient = Get.find<ConsultorioApiClient>();

  getAll() async {
    List<Consultorio> list = <Consultorio>[];
    var response = await apiClient.getAll();
    if (response != null) {
      response.forEach((e) {
        print(Consultorio.fromJson(e).toJson());
        list.add(Consultorio.fromJson(e));
      });
    }
    return list;
  }
}
