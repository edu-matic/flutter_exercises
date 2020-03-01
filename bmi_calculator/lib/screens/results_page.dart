import 'package:bmi_calculator/constans.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  final String bmi;
  final String feedBack;
  final String result;
  final Genders gender;

  ResultsPage({@required this.bmi,@required this.feedBack, @required this.result, @required this.gender});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: AlignmentDirectional.centerStart,
              margin: EdgeInsets.only(left: 10),
              child: Text('Your Result',
              style: kResultsLabel,),
            ),
          ),
          Expanded(
            flex: 7,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  Text(result.toUpperCase(),style: kStateWeightStyle,),
                  Text(bmi,style: kBmiResultStyle,),
                  Text(feedBack,style: kRecomendationStyle, textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
              label: 'RE-CALCULATE',
              onPress: (){
              Navigator.pop(context);
            })
          ),

        ],
      ),
    );
  }
}