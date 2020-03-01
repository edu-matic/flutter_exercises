import 'package:flutter/material.dart';
import 'package:bmi_calculator/constans.dart';

class BottomButton extends StatelessWidget {
  final Function onPress;
  final String label;

  BottomButton({this.label, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Container(
        child: Center(
          child: Text(
            label,
            style: kBottomContainerColour,
          ),
        ),
        color: kBottomColorContainer,
        width: double.infinity,
        height: kBottomContainerHeight,
        margin: EdgeInsets.only(top: 10),
      ),
    );
  }
}