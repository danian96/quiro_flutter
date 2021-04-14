import 'package:consultorio_quiropractico/global/widgets/general.dart';
import 'package:consultorio_quiropractico/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:consultorio_quiropractico/controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor(),
      body: SafeArea(
        child: SizedBox.expand(
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                child: todo(context),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget todo(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: screenColor(),
      padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
      child: Column(
        children: <Widget>[
          espacio(35),
          negritaText("Consultorio KORTH", Colors.white, FontStyle.italic, 37,
              TextAlign.center),
          generalText("Nosotros corregimos tu columna.", Colors.white,
              FontStyle.italic, 25, TextAlign.center),
          espacio(35),
          botonGeneralRedirect(context, "Iniciar Sesion", Routes.LOGIN,
              Colors.white, Colors.black),
          espacio(25),
          botonGeneralRedirect(context, "Agendar Cita", Routes.AGENDAR,
              Colors.white, Colors.black),
          espacio(15),
          informacion(context),
          // ----------------FOTOS DE LA PAGINA----------------------
          //imagen(location, 300, 300),
          //imagen(location, 300, 300),
          //imagen(location, 300, 300),
          //
          dividerGrueso(context),
          espacio(15),
          contactos(context),
          espacio(15),
          dividerGrueso(context),
        ],
      ),
    );
  }

// panel de propaganda
  Widget informacion(BuildContext context) {
    return Container(
        decoration: new BoxDecoration(
            color: Color.fromRGBO(178, 178, 178, 1),
            borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(40.0),
                topRight: const Radius.circular(40.0))),
        margin: const EdgeInsets.all(10.0),
        width: MediaQuery.of(context).size.width * 0.8,
        child: Column(
          children: <Widget>[
            espacio(11),
            generalText("Corrige con nosotros tu postura", Colors.black38,
                FontStyle.italic, 23, TextAlign.center),
            generalText("Consultorio Korth es la mejor opcion para ti",
                Colors.black38, FontStyle.italic, 23, TextAlign.center),
            espacio(7),
            divider(),
            espacio(7),
            generalText(
                "Nosotros te ayudamos a corregir tu columna, somos la mejor opcion no esperes mas y agenda tu cita",
                Colors.black38,
                FontStyle.italic,
                19,
                TextAlign.center),
            espacio(10),
          ],
        ));
  }

//datos del contacto de pie de pagina
  Widget contactos(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          generalText("Contactanos a traves de nuestras redes sociales",
              Colors.black38, FontStyle.italic, 17, TextAlign.center),
          Container(
            child: Row(
              children: <Widget>[
                // ----------------ICONOS REDES SOCIALES----------------------
                //imagen(location, width, height),
                //imagen(location, width, height),
                //imagen(location, width, height),
              ],
            ),
          ),
          generalText(
              "Consultorio Korth, Toluca de lerdo, San Cristobal Huichochitlan",
              Colors.black38,
              FontStyle.italic,
              17,
              TextAlign.center),
          generalText("Teléfono: 7224725647", Colors.black38, FontStyle.italic,
              17, TextAlign.center),
          generalText("Correo electónico: al221710926@gmail.com",
              Colors.black38, FontStyle.italic, 17, TextAlign.center),
        ],
      ),
    );
  }

  Container dividerGrueso(BuildContext context) {
    return Container(
      color: Color.fromRGBO(224, 138, 35, 1),
      width: MediaQuery.of(context).size.width,
      height: 20,
    );
  }
}
