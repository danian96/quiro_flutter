import 'dart:convert';

import 'package:consultorio_quiropractico/data/model/auth_model.dart';
import 'package:consultorio_quiropractico/data/provider/auth_provider.dart';

class AuthRepository {
  final AuthApiClient apiClient = AuthApiClient();

  Future<Auth> login(String username, String password) async {
    Map<String, dynamic> json = await apiClient.login(username, password);
    return Auth.fromJson(json);
  }
}
