import 'package:flutter/material.dart';

class text_app_widjet extends StatelessWidget {
  final String text;
  final String fontFamily;
  final Color fontColor;
  final double fontSize;
  final FontWeight fontWeight;

   text_app_widjet({
   required this.text,
    this.fontSize=16,
    this.fontColor=Colors.white,
    this.fontWeight=FontWeight.normal,
    this.fontFamily='Roboto'
  }) ;

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
        color:fontColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: fontFamily,

      ),);
  }
}
