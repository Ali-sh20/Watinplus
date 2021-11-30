
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:watinplus/widgets/text_app_widjet.dart';

mixin Helpers{
  void showSnackBar(BuildContext context,{required String message,bool error=true}){
   ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(

           content: text_app_widjet(text: message),
           backgroundColor: error?Colors.red:Colors.blue,
           // padding: EdgeInsets.all(16),

           action:SnackBarAction(
             onPressed:() {} ,
             label: 'DISMISS',
             textColor:Colors.blue,
           ) ,

       ));

  }
}