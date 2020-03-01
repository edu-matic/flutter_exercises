import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_page.dart';


//se recomienda que solo en el main este la parte de configuracion de tema fuentes colores blabla
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //uso el tema oscuro de material app, pero cambio un par de cosas para personalizar a mi gusto, con copyWith() para no hacer todo de cero
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0D22),
        scaffoldBackgroundColor: Color(0xFF0A0D22),
      ),
      //home: InputPage(),
      initialRoute: 'InputPage', //este reemplaza a home: InputPage()
      routes: {
        'InputPage': (context)=>InputPage(),
      },
    );
  }
}

