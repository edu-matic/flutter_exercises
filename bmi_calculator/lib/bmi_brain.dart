import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:bmi_calculator/constans.dart';

class BmiBrain {

  final int altura;
  final int peso;
  double _bmi;

  BmiBrain({@required this.altura,@required this.peso});

  String getBmi(){
    _bmi= peso/(pow(altura/100,2));
    return _bmi.toStringAsFixed(1);
  }

  String getResults(){
    if(_bmi >= 25){
      return 'overweight';
    }
    else if(_bmi>=18.5){
      return 'normal';
    }
    else{
      return 'underweight';
    }
  }

  String getFeedBack(Genders selectedGender){
    if (_bmi >= 25) {
      if(selectedGender == Genders.Female){
        return 'You have a higher than normal body weight. Try to exercise more.';
      }
      else{
        return 'Cheee, camisa tipo matambre. BAJA LOS POSTRES!!!';
      }
      
    } 
    else if (_bmi >= 18.5) {
      if(selectedGender == Genders.Female){
        return 'You have a normal body weight. Good job!';
      }
      else{
        return 'Esaa... Tamos como queremos ehh. Entrale tranqui a las anchuras';
      }
    } 
    else {
      if(selectedGender == Genders.Female){
        return 'You have a lower than normal body weight. You can eat a bit more.';
      }
      else{
        return 'Master... Herbalife te esta buscando';
      }
    }
  }

  
}