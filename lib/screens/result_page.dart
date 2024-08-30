
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reuseable_card.dart';
import 'package:flutter/material.dart';
class ResultPage extends StatelessWidget {

  //TODO Creating variable
  final String bmiResult;
  final String resultText;
  final String interpretation;


  const ResultPage({super.key, required this.bmiResult, required this.resultText, required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text("Result Page"),
        ),

      //Body
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Expanded(child: Container(
            padding: EdgeInsets.all(25.0),
            child: Text('YOUR RESULT:',
              style: KTittleTextStyle,
            ),

          ),),

          Expanded(
            flex: 5,
            child: ReUseableCard(
              
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  Text("$resultText",
                    style: KResultTextStyle,
                  ),

                  Text("$bmiResult",
                    style: KBmiTextStyle,
                  ),

                  Text("$interpretation",
                    textAlign: TextAlign.center,
                    style: KBodyTextStyle,
                  ),
                  
                ],
              ),
              
              color: KActiveColor,
            ),
          ),

          BottomButton(buttonTittle: 'RE-CALCULATE BMI', onTap: (){
            Navigator.pop(context);
          })

        ],
      ),
      );
  }
}
