import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/generated/l10n.dart';
import 'package:watinplus/widgets/Card_Gridview.dart';
import 'package:watinplus/widgets/textStore.dart';

import '../size_config.dart';

class Artboard29 extends StatefulWidget {
  const Artboard29({Key? key}) : super(key: key);

  @override
  _Artboard29State createState() => _Artboard29State();
}

class _Artboard29State extends State<Artboard29> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: HexColor('#019BE1'),
          elevation: 5,
          title: Text(
            S.of(context).Art4_engineering,
            style: TextStyle(
                fontFamily: 'Ooredo',
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: HexColor('#FFFFFF')),
          ),
        ),
        backgroundColor: HexColor('#ffffff'),
        body: Padding(
          padding:  EdgeInsets.only(bottom: SizeConfig().scaleHeight(5),top: SizeConfig().scaleHeight(20),right : SizeConfig().scaleWidth(20),left: SizeConfig().scaleWidth(20)),
          child: GridView(
            scrollDirection: Axis.vertical,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: SizeConfig().scaleWidth(20),
                mainAxisSpacing: SizeConfig().scaleHeight(20),
                mainAxisExtent: SizeConfig().scaleHeight(220.8)),
            children: [
              Card_Gridview(title: S.of(context).Art29_InteriorDesignT,subtitle: S.of(context).Art29_InteriorDesignT,image: 'images/هندسة1.png'),
              Card_Gridview(title: S.of(context).Art29_ExteriorDesignT,subtitle: S.of(context).Art29_ExteriorDesignT,image: 'images/هندسة2.png'),
              Card_Gridview(title: S.of(context).Art29_workPlansT,subtitle: S.of(context).Art29_workPlansS,image: 'images/هندسة3.png'),
            ],
          ),
        ));
  }
}

