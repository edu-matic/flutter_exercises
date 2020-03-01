import 'package:flutter/material.dart';
import 'package:bmi_calculator/constans.dart';
class ReusableIconText extends StatelessWidget {
  final IconData icono;
  final String text;

  ReusableIconText({this.icono, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icono,
          size: 70,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: kLabelStyle,
        ),
      ],
    );
  }
}