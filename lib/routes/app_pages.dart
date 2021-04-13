import 'package:consultorio_quiropractico/bindings/cita_binding.dart';
import 'package:consultorio_quiropractico/bindings/login_binding.dart';
import 'package:consultorio_quiropractico/views/citas_view.dart';
import 'package:consultorio_quiropractico/views/editar_cita_view.dart';
import 'package:consultorio_quiropractico/views/login_view.dart';
import 'package:get/get.dart';
import 'app_routes.dart';
import '../bindings/home_binding.dart';
import '../views/home_page.dart';

class AppPages {
  static final routes = [
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: HomeBinding()),
    GetPage(
        name: Routes.LOGIN, page: () => LoginView(), binding: LoginBinding()),
    GetPage(name: Routes.CITAS, page: () => CitaView(), binding: CitaBinding()),
    GetPage(
        name: Routes.EDITAR_CITA,
        page: () => EditarCitaView(),
        binding: CitaBinding()),
  ];
}
