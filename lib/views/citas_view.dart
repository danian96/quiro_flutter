import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:consultorio_quiropractico/controllers/cita_controller.dart';

import 'package:consultorio_quiropractico/views/widgets/page_1.dart';

class CitaView extends GetView<CitaController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        foregroundColor: Colors.grey,
        title: Text('Consultorio Quiropractico'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Page1(),
        ],
      ),
    );
  }
}
