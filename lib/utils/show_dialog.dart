
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/widgets/text_app_widjet.dart';

mixin showDialogBottom{
  void showDialog(BuildContext context){
    showModalBottomSheet(
      context:context ,
      builder: (context) {
        return BottomSheet(
          onClosing: () {},
          builder: (context) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 22),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        child: Icon(Icons.delete,color: Colors.white,),
                        backgroundColor: HexColor('#F34949',),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text_app_widjet(text: 'Remove saved cart',fontSize: 24,fontWeight: FontWeight.w700,fontColor: Colors.black,),
                          SizedBox(height:2),
                          text_app_widjet(text: 'Are you sure you want to\n remove Vegetables saved cart ',fontColor: HexColor('#6E7989'),fontSize: 16,),

                        ],
                      )
                    ],
                  ),
                  SizedBox(height:28),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          }, child: text_app_widjet(text: 'No',fontColor: HexColor('#99A0B0',),fontSize: 14,fontWeight: FontWeight.w400,)),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)
                              ),
                              primary: HexColor('#F34949',),
                              elevation: 15,
                              shadowColor: HexColor('#FDDCDC',)
                          ),
                          onPressed: () {

                          }, child: text_app_widjet(text: 'REMOVE',fontColor: Colors.white,fontSize: 14,fontWeight: FontWeight.w400,))
                    ],
                  )
                ],
              ),
            );
          },);
      },);
  }
}