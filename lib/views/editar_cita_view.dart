import 'package:consultorio_quiropractico/data/model/cita_model.dart';
import 'package:consultorio_quiropractico/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:consultorio_quiropractico/controllers/cita_controller.dart';
import 'package:intl/intl.dart';

class EditarCitaView extends GetView<CitaController> {
  DateTime selectedDate = DateTime.now();
  late int hour;
  late int minutes;
  Cita cita = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        foregroundColor: Colors.grey,
        title: Text('Consultorio Quiropractico'),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox.expand(
          child: todo(context),
        ),
      ),
    );
  }

  Widget todo(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
      child: Column(
        children: <Widget>[
          Text('Editar Cita Nro' + cita.id_cita,
              style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: const Icon(Icons.date_range),
            title: Text('Fecha actual: ${cita.fecha_cita}'),
            subtitle: TextFormField(
              controller: controller.dateController,
              showCursor: true,
              readOnly: true,
            ),
            trailing: RaisedButton(
              onPressed: () => controller.openCalendar(context), // Refer step 3
              child: Text(
                'Cambiar Fecha',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              color: Colors.black,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.access_time),
            title: Text('Hora actual: ${cita.hora}'),
            subtitle: TextFormField(
              controller: controller.timeController,
              showCursor: true,
              readOnly: true,
            ),
            trailing: RaisedButton(
              onPressed: () => controller.openClock(context), // Refer step 3
              child: Text(
                'Cambiar Hora',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              color: Colors.black,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.accessible),
            title: Text('Paciente:'),
            subtitle:
                Text("${cita.nombre} ${cita.ap_paterno} ${cita.ap_materno}"),
          ),
          ListTile(
            leading: const Icon(Icons.healing),
            title: const Text('Quiropractico'),
            subtitle: Text(
                "${cita.nombre_quiro} ${cita.ap_paterno_quiro} ${cita.ap_materno_quiro}"),
          ),
          SizedBox(
            height: 200,
          ),
          RaisedButton(
            onPressed: () {
              controller.editar(cita.id_cita);
              controller.loadData();
              Get.reload();
              Get.offAndToNamed(Routes.CITAS);
            }, // Refer step 3
            child: Text(
              'Guardar Edicion',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
