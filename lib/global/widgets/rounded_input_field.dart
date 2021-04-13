import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final controller;

  const RoundedInputField(
      {Key? key,
      required this.hintText,
      required this.onChanged,
      this.controller,
      this.icon = Icons.person})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return 'Campo requerido.';
          }
          return null;
        },
        controller: controller,
        onChanged: onChanged,
        cursorColor: Colors.amber,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.amber,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
