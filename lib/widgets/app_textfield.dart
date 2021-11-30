import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppTextField extends StatelessWidget {

  final TextEditingController textEditingController;
  final String hint;
  final TextInputType keyboardType;
  final bool obscureText;
  final Locale? locale;

   AppTextField({
  required  this.textEditingController,
  required  this.hint,
  this.obscureText=false,
  required  this.keyboardType,
     this.locale
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 12,
          color: HexColor('#6E7989'),
          fontFamily: locale=='en'?'Roboto':'Ooredo',
          fontWeight: FontWeight.w500,
        ),
        enabledBorder: getBorder(),
        focusedBorder: getBorder(),

      ),
    );
  }

  UnderlineInputBorder getBorder({Color borderColor=Colors.grey}){
    return UnderlineInputBorder(
        borderSide:
        BorderSide(color: HexColor('#D8DAE0'), width: 1)
    );
  }
}
