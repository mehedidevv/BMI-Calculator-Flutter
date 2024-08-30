
//TODO Implementation Of ReSizeable Card

// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ReUseableCard extends StatelessWidget {
  // const ReUseableCard({super.key});

  //Creating Variable
  final Color color;
  final Widget? cardChild;
  //Void Call Back Is One Kind Of Function
  final VoidCallback? onCardClick;

  //Creating Constructor
  ReUseableCard({required this.color, this.cardChild, this.onCardClick}){

  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //Call OnCardClick Function
      onTap: onCardClick,


      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color,
        ),

        child: cardChild,
      ),
    );
  }
}