import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function()? press;
  final Color color, textColor;

  const RoundedButton(
      {Key? key,
      required this.text,
      this.press,
      this.color = Colors.amber,
      this.textColor: Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: Get.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: color,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
