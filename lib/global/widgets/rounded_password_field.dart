import 'text_field_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final controller;
  bool showPassword;
  Function()? changeShowPassword;
  RoundedPasswordField(
      {Key? key,
      this.controller,
      required this.onChanged,
      required this.changeShowPassword,
      this.showPassword = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return 'Campo requerido.';
          }
          if (value.length <= 4) {
            return 'Campo requiere mínimo 5 caracteres.';
          }
          return null;
        },
        controller: controller,
        obscureText: !showPassword,
        onChanged: onChanged,
        cursorColor: Colors.amber,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: Colors.amber,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              Icons.visibility,
              color: Colors.amber,
            ),
            onPressed: changeShowPassword,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
