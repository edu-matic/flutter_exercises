import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function onPress;

  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: onPress,
          child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration:
            BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}

//nota el container contiene una propiedad llamada color para el fondo, pero si se usa bosdecoration
//dicha propiedad tiene que estar de ella sino sale error