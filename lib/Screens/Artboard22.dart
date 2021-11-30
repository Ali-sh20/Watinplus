import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/generated/l10n.dart';
import 'package:watinplus/widgets/Card_Gridview.dart';
import 'package:watinplus/widgets/textStore.dart';

import '../size_config.dart';
import 'Artboard23.dart';
import 'Artboard25.dart';

class Artboard22 extends StatefulWidget {
  const Artboard22({Key? key}) : super(key: key);

  @override
  _Artboard22State createState() => _Artboard22State();
}

class _Artboard22State extends State<Artboard22> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor('#019BE1'),
          elevation: 5,
          title: Text(
            S.of(context).Art4_design,
            style: TextStyle(
                fontFamily: 'Ooredo',
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: HexColor('#FFFFFF')),
          ),
        ),
        backgroundColor: HexColor('#ffffff'),
        body: Padding(
          padding:  EdgeInsets.only(top: SizeConfig().scaleHeight(20),right : SizeConfig().scaleWidth(20),left: SizeConfig().scaleWidth(20),bottom: SizeConfig().scaleHeight(5)),
          child: GridView(
            scrollDirection: Axis.vertical,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: SizeConfig().scaleWidth(20),
                mainAxisSpacing: SizeConfig().scaleHeight(20),
                mainAxisExtent: SizeConfig().scaleHeight(220.8),
            ),
            children: [
               Card_Gridview(title: S.of(context).Art22_LogoDesignT,subtitle: S.of(context).Art22_LogoDesignS,image: 'images/Untitled-02.png'),
               Card_Gridview(title: S.of(context).Art22_businessIdentityT,subtitle: S.of(context).Art22_businessIdentityS,image: 'images/Untitled3.png'),
               Card_Gridview(title: S.of(context).Art22_socialMDesignsT,subtitle: S.of(context).Art22_socialMDesignsS,image: 'images/Untitled-1 (2).png'),
               Card_Gridview(title: S.of(context).Art22_ProfileSettingT,subtitle: S.of(context).Art22_ProfileSettingS,image: 'images/Untitled-5.png'),
               Card_Gridview(title: S.of(context).Art22_cartoonsT,subtitle: S.of(context).Art22_cartoonsS ,image: 'images/Untitled-33.png'),
               Card_Gridview(title: S.of(context).Art22_UIUXDesignT,subtitle: S.of(context).Art22_UIUXDesignS ,image: 'images/Untitled002.png'),
            ],
          ),
        ));
  }
}

