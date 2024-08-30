import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {

  final String buttonTittle;
  final VoidCallback onTap;
  const BottomButton({super.key, required this.buttonTittle,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return   //Button
      GestureDetector(
        onTap: onTap,

        child: Container(
          height: KBottomConatinerHeight,
          width: double.infinity,
          color: KBottomConatinerColor,

          child: Center(
            child: Text('$buttonTittle',
              style: KButttonStyle,
            ),
          ),
        ),
      );
  }
}
