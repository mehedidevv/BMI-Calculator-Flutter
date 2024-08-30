
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoundIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  //Constructor
  const RoundIcon({super.key, required this.icon,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return  RawMaterialButton(
        fillColor: Color(0xFF4C4F5E),
        elevation: 0,
        shape: CircleBorder(),
        constraints: const BoxConstraints.tightFor(
          height: 56.0,
          width: 56.0,
        ),

        child: Icon(
          icon,
          color: Colors.white,
        ),

        onPressed: onPressed,
    );
  }
}
