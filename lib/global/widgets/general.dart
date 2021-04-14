import 'package:consultorio_quiropractico/data/model/consultorio_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Color mainColor() {
  return Color.fromRGBO(147, 147, 147, 1);
}

Color screenColor() {
  return Color.fromRGBO(99, 99, 99, 1);
}

Text negritaText(String texto, Color color, FontStyle estilo, double escala,
    TextAlign alineacion) {
  return Text(
    texto,
    textAlign: alineacion,
    style: TextStyle(
        fontWeight: FontWeight.bold,
        color: color,
        fontSize: escala,
        fontStyle: estilo),
  );
}

Text generalText(String texto, Color color, FontStyle estilo, double escala,
    TextAlign alineacion) {
  return Text(
    texto,
    textAlign: alineacion,
    style: TextStyle(color: color, fontSize: escala, fontStyle: estilo),
  );
}

Widget espacio(double size) {
  return SizedBox(
    height: size,
  );
}

Widget botonGeneralRedirect(BuildContext context, String text, String route,
    Color colorBoton, Color colorLetras) {
  return Container(
    width: 300,
    height: 60,
    child: RaisedButton(
      onPressed: () {
        Get.toNamed(route);
      },
      color: colorBoton,
      textColor: colorLetras,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Text(
        text,
        style: TextStyle(fontSize: 20.0),
      ),
    ),
  );
}

Widget botonGeneralRedirect2(BuildContext context, Consultorio consultorio,
    String text, String route, Color colorBoton, Color colorLetras) {
  return Container(
    width: 300,
    height: 60,
    child: RaisedButton(
      onPressed: () {
        Get.toNamed(route, arguments: consultorio);
      },
      color: colorBoton,
      textColor: colorLetras,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Text(
        text,
        style: TextStyle(fontSize: 20.0),
      ),
    ),
  );
}

Container divider() {
  return Container(
    color: Colors.black45,
    width: 250,
    height: 2,
  );
}

Widget imagen(String location, double width, double height) {
  return Image.asset(
    location,
    alignment: Alignment.center,
    height: width,
    width: height,
  );
}

Widget input(IconData icon, String text, TextEditingController controller,
    bool obscure) {
  return CustomInputField(
      Icon(
        icon,
        color: Colors.white,
      ),
      text,
      controller,
      obscure);
}

class CustomInputField extends StatelessWidget {
  Icon fieldIcon;
  String hinText;
  var controller;
  bool obscure;
  //CONSTRUCTOR//
  CustomInputField(this.fieldIcon, this.hinText, this.controller, this.obscure);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10.0),
        child: TextField(
            obscureText: obscure,
            controller: controller,
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                hintText: hinText,
                labelText: hinText,
                icon: fieldIcon),
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black,
            )));
  }
}
//-------------------------------------------------
