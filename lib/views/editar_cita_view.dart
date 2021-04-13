import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:consultorio_quiropractico/controllers/cita_controller.dart';

class EditarCitaView extends GetView<CitaController> {
  DateTime selectedDate = DateTime.now();
  late int hour;
  late int minutes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Text('Editar Cita Nro' + '1',
              style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: const Icon(Icons.date_range),
            title: const Text('Fecha'),
            subtitle: const Text('None'),
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
            title: const Text('Hora'),
            subtitle: const Text('None'),
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
            title: const Text('Paciente'),
            subtitle: const Text('None'),
          ),
          ListTile(
            leading: const Icon(Icons.healing),
            title: const Text('Quiropractico'),
            subtitle: const Text('None'),
          ),
          SizedBox(
            height: 200,
          ),
          RaisedButton(
            onPressed: () {}, // Refer step 3
            child: Text(
              'Volver atras',
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
