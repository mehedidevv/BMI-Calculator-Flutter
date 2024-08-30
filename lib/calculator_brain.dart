import 'dart:math';

class CalculatorBrain{
  final int height;
  final int weight;

  //Constructor
CalculatorBrain({required this.height, required this.weight});

//TODO Method Of Calculate BMi

  late double _bmi;
 String calCulateBmi(){
   
    _bmi=weight/pow(height/100, 2);

   return _bmi.toStringAsFixed(1);
}


  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }


}
