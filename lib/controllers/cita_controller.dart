import 'package:consultorio_quiropractico/data/model/cita_model.dart';
import 'package:consultorio_quiropractico/data/model/consultorio_model.dart';
import 'package:consultorio_quiropractico/data/repository/cita_repository.dart';
import 'package:consultorio_quiropractico/data/repository/consultorio_repository.dart';
import 'package:consultorio_quiropractico/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CitaController extends GetxController {
  final citasRepo = Get.find<CitaRepository>();
  final consultoriosRepo = Get.find<ConsultorioRepository>();
  RxBool loading = false.obs;
  RxList<Cita> listaDeCitas = <Cita>[].obs;
  RxList<Consultorio> listaDeConsultorios = <Consultorio>[].obs;

  DateTime datePicked = DateTime.now();
  TimeOfDay timePicked = TimeOfDay.now();
  final dateController = TextEditingController();
  final timeController = TextEditingController();

  TextEditingController nombreCtrl = TextEditingController();
  TextEditingController appCtrl = TextEditingController();
  TextEditingController apmCtrl = TextEditingController();
  TextEditingController edadCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController tlfCtrl = TextEditingController();
  TextEditingController sexoCtrl = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void onInit() {
    loadData();
    super.onInit();
  }

  void loadData() async {
    listaDeCitas.assignAll(await citasRepo.getAll());
    listaDeConsultorios.assignAll(await consultoriosRepo.getAll());
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
      dateController.text = DateFormat("yyyy-MM-dd")
          .format(DateTime.parse(datePicked.toString()));
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
      timeController.text = timePicked.hour.toString() +
          ":" +
          timePicked.minute.toString() +
          ":00";
      time = timePicked;
    }
  }

  void editar(id_cita) async {
    await citasRepo
        .edit(id_cita, dateController.text, timeController.text)
        .then((auth) {
      loadData();
      Get.to(Routes.CITAS);
      loading.value = false;
    }).catchError((err) {
      loading.value = false;
    });
  }

  void insertar() async {
    await citasRepo
        .insertar(
            nombreCtrl.text,
            appCtrl.text,
            apmCtrl.text,
            edadCtrl.text,
            emailCtrl.text,
            sexoCtrl.text,
            tlfCtrl.text,
            dateController.text,
            timeController.text)
        .then((response) {
      Get.toNamed(Routes.AGENDAR);
    });
  }
}
