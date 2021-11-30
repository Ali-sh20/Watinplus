

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/size_config.dart';

class textStore extends StatelessWidget {
  final String text;
  final double fontsize;
  final String fontfamily;
  final FontWeight fontWeight;
  final String hexcolor;
  final TextAlign? textAlign;

  textStore(
      {required this.text,
      required this.fontsize,
      required this.fontfamily,
      required this.fontWeight,
      required this.hexcolor,
        this.textAlign
      });
  int mockUpHeight=812;
  int mockUpWidth=375;

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;

    final textScaleFactor=width/mockUpWidth;

    SizeConfig().init(context);
    return Text(
      text,
        textAlign: textAlign,
      style: TextStyle(
          fontSize: SizeConfig().scaleTextFont(fontsize),
          fontFamily:Localizations.localeOf(context).languageCode=='ar'?'Ooredo':'Roboto',
          fontWeight: fontWeight,
          color: HexColor(hexcolor)),
        textScaleFactor: textScaleFactor
    );
  }
}
