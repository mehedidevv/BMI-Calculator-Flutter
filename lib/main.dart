import 'package:flutter/material.dart';
import 'screens/input_page.dart';
void main() {
  runApp(BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      //Theming
      theme: ThemeData.dark().copyWith(

        scaffoldBackgroundColor: Color(0xFF090D22),
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF090D22)),

      ),

      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}





