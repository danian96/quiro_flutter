import 'package:consultorio_quiropractico/data/model/cita_model.dart';
import 'package:consultorio_quiropractico/data/repository/cita_repository.dart';
import 'package:consultorio_quiropractico/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CitaController extends GetxController {
  final citasRepo = Get.find<CitaRepository>();
  RxBool loading = false.obs;
  RxList<Cita> listaDeCitas = <Cita>[].obs;

  DateTime datePicked = DateTime.now();
  TimeOfDay timePicked = TimeOfDay.now();
  final dateController = TextEditingController();
  final timeController = TextEditingController();

  @override
  void onInit() {
    loadData();
    super.onInit();
  }

  void loadData() async {
    listaDeCitas.assignAll(await citasRepo.getAll());
    print('loadData');
  }

  void eliminar(id_cita) async {
    loading.value = true;
    await citasRepo.eliminar(id_cita).then((response) {
      loading.value = false;
    }).catchError((err) {
      loading.value = false;
    });
  }

  openCalendar(BuildContext context) async {
    FocusScope.of(context).requestFocus(new FocusNode());
    datePicked = (await showDatePicker(
      context: context,
      initialDate: datePicked,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    ))!;
    if (datePicked != DateTime.now()) {
      dateController.text = datePicked.toString();
    }
  }

  openClock(BuildContext context) async {
    TimeOfDay time = TimeOfDay.now();
    FocusScope.of(context).requestFocus(new FocusNode());
    timePicked = (await showTimePicker(
      context: context,
      initialTime: time,
    ))!;
    if (timePicked != time) {
      timeController.text = timePicked.format(context);
      time = timePicked;
    }
  }
}
