import 'package:consultorio_quiropractico/controllers/cita_controller.dart';
import 'package:consultorio_quiropractico/data/model/cita_model.dart';
import 'package:consultorio_quiropractico/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page1 extends StatelessWidget {
  final controller = Get.find<CitaController>();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(
        () => ListView.builder(
          itemCount: controller.listaDeCitas.length,
          itemBuilder: (context, index) {
            Cita cita = controller.listaDeCitas[index];
            /* return ListTile(
              title: Text("${schedule.service.name}"),
              subtitle: Text("${schedule.schedulingDate}"),
            ); */
            return Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.grey,
                elevation: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        Icons.insert_drive_file,
                        size: 70,
                        color: Colors.yellow,
                      ),
                      title: Text(' Cita N° ' + cita.id_cita,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      subtitle: Text(
                          ' Fecha:  ' +
                              cita.fecha_cita +
                              '\n' +
                              ' Hora: ' +
                              cita.hora +
                              '\n' +
                              ' Paciente: ' +
                              cita.nombre +
                              ' ' +
                              cita.ap_paterno +
                              ' ' +
                              cita.ap_materno +
                              '\n' +
                              ' Quiropractico: ' +
                              cita.nombre_quiro +
                              ' ' +
                              cita.ap_paterno_quiro +
                              ' ' +
                              cita.ap_materno_quiro,
                          style: TextStyle(color: Colors.white)),
                    ),
                    ButtonTheme(
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text('Editar',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            onPressed: () {
                              Get.toNamed(Routes.EDITAR_CITA);
                            },
                          ),
                          Obx(
                            () => Visibility(
                              visible: !controller.loading.value,
                              child: FlatButton(
                                child: const Text('Eliminar',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                                onPressed: () {
                                  controller.eliminar(cita.id_cita);
                                  controller.loadData();
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Obx(
                      () => Visibility(
                        visible: controller.loading.value,
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          width: Get.width * 0.8,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(29),
                            // ignore: deprecated_member_use
                            child: FlatButton(
                              padding: EdgeInsets.symmetric(
                                vertical: 20,
                                horizontal: 40,
                              ),
                              onPressed: null,
                              child: CircularProgressIndicator(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
