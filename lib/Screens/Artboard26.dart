import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/generated/l10n.dart';
import 'package:watinplus/widgets/Card_Gridview.dart';
import 'package:watinplus/widgets/textStore.dart';

import '../size_config.dart';

class Artboard26 extends StatefulWidget {
  const Artboard26({Key? key}) : super(key: key);

  @override
  _Artboard26State createState() => _Artboard26State();
}

class _Artboard26State extends State<Artboard26> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor('#019BE1'),
          elevation: 5,
          title: Text(
            S.of(context).Art4_programing,
            style: TextStyle(
                fontFamily: 'Ooredo',
                fontSize: 14,
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
              Card_Gridview(title: S.of(context).Art26_MobileAppsT,subtitle: S.of(context).Art26_MobileAppsS,image: 'images/برمجة1.png'),
              Card_Gridview(title: S.of(context).Art26_WebsitesT,subtitle: S.of(context).Art26_WebsitesS,image: 'images/برمجة2.png'),
              Card_Gridview(title:  S.of(context).Art26_IntroductorySitesT,subtitle:  S.of(context).Art26_IntroductorySitesS,image: 'images/برمجة3.png'),
              Card_Gridview(title:  S.of(context).Art26_serversT,subtitle:  S.of(context).Art26_serversS,image: 'images/برمجة4.png'),
              Card_Gridview(title: S.of(context).Art26_serversT,subtitle: S.of(context).Art26_serversS,image: 'images/برمجة5.png'),
              Card_Gridview(title: S.of(context).Art26_ModificationsT,subtitle: S.of(context).Art26_ModificationsS,image: 'images/برمجة6.png'),
            ],
          ),
        ));
  }
}

