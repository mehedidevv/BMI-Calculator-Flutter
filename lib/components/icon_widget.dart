
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';



class IconWidget extends StatelessWidget {

  final IconData icon;
  final String label;

  final Color color;

  const IconWidget({super.key,required this.icon,required this.label,
    required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
            icon,
          color: color,
          size: 80.0,
        ),

        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: KLabelTextStyle,

        ),
      ],
    );
  }
}
