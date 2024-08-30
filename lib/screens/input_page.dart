import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/icon_widget.dart';
import 'package:bmi_calculator/screens/result_page.dart';
import 'package:bmi_calculator/components/round_icon.dart';
import 'package:flutter/material.dart';
import '../components/reuseable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/main.dart';


//TODO Declaring Enum Class
enum Gender{male,female}


class InputPage extends StatefulWidget {
  const InputPage({super.key});


  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor=KInActiveColor;
  Color feMaleCardColor=KInActiveColor;

  //Method For Card Color

  void updateCardColor(Gender gender){
    if(gender == Gender.male){
      maleCardColor=KActiveColor;
      feMaleCardColor=KInActiveColor;
    }
    if(gender==Gender.female){
      feMaleCardColor=KActiveColor;
      maleCardColor=KInActiveColor;
    }
  }


  //TODO Declaring Height
  int height=180;
  int weight=65;
  int age=20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 5,
            ),
          ),
        ),

        //Body
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [

            //Upper Part Design
            Expanded(child: Row(
              children: [

                //First Card (Male Card)
                Expanded(
                  child: ReUseableCard(
                    onCardClick:(){
                      setState(() {
                        updateCardColor(Gender.male);
                      });
                    },
                    color: maleCardColor,

                   cardChild: IconWidget(
                    icon: FontAwesomeIcons.mars,
                    color: Colors.white,
                    label: 'MALE',
                  ),
                                  ),),

                //Second Card (Female Card
                Expanded(
                  child: ReUseableCard(

                    onCardClick: (){
                      setState(() {
                        updateCardColor(Gender.female);
                      });
                    },


                    color: feMaleCardColor,
                    cardChild: IconWidget(
                    icon: FontAwesomeIcons.venus,
                    color: Colors.white,
                    label: 'FEMALE',
                  ),
                                  ),),
              ],
            ),),



            //Middle Part Design
            Expanded(
              child: ReUseableCard(

                //TODO Calling CardChild Widget
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("HEIGHT",
                      style: KLabelTextStyle,
                    ),

                    //Creating Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text("$height",
                          style: KNumberTextStyle,
                        ),

                        Text("cm",
                          style: KLabelTextStyle,
                        ),
                      ],
                    ),

                    //TODO Implementation Of Slider

                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(

                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.grey,
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0xFFEB1555).withOpacity(0.12),

                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30),

                      ),

                      child: Slider(value: height.toDouble(),
                          min: 120,
                          max: 220,

                          onChanged: (double newValue){
                          setState(() {
                            height=newValue.round();
                          });

                      }),
                    )
                  ],
                ),
                color: KActiveColor,),
            ),


            //Lower Part Design
            Expanded(child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //TODO Used Text BaseLine
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [

                //TODO Weight Card Implementation
                Expanded(
                  child: ReUseableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //Text
                        Text('WEIGHT',
                          style: KLabelTextStyle,
                        ),
                        //Another Text
                        Text('$weight',
                          style: KNumberTextStyle,
                        ),

                        //Implemnet Row For ++ And --

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIcon(icon: FontAwesomeIcons.plus, onPressed: (){
                              setState(() {
                                weight++;
                              });
                            }),

                            SizedBox(
                              width: 30,
                            ),

                            RoundIcon(icon: FontAwesomeIcons.minus, onPressed: (){
                              setState(() {
                                weight--;
                              });
                            })

                          ],
                        ),


                      ],
                    ),
                    color: KActiveColor,),
                ),

                //TODO Card For Age

                Expanded(
                  child: ReUseableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE',
                          style: KLabelTextStyle,
                        ),

                        Text('$age',
                          style: KNumberTextStyle,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIcon(icon: FontAwesomeIcons.plus, onPressed: (){
                              setState(() {
                                age++;
                              });
                            }),

                            SizedBox(
                              width: 30,
                            ),

                            RoundIcon(icon: FontAwesomeIcons.minus, onPressed: (){
                              setState(() {
                                age--;
                              });
                            })
                          ],
                        )
                      ],
                    ),

                    color: KActiveColor,),
                ),

              ],
            ),),


            BottomButton(buttonTittle: 'CALCULATE YOUR BMIi', onTap: (){

              //TODO Calculator Brain Class
              CalculatorBrain brain=CalculatorBrain(
                  height: height,
                  weight: weight);

              Navigator.push(context, MaterialPageRoute(builder:
                  (context)=>ResultPage(
                    bmiResult: brain.calCulateBmi(),
                    resultText: brain.getResult(),
                    interpretation: brain.getInterpretation(),

                  ),),);


            })
            



          ],
    )
    );
  }
}



