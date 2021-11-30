import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/generated/l10n.dart';
import 'package:watinplus/widgets/Card_Gridview.dart';
import 'package:watinplus/widgets/textStore.dart';

import '../size_config.dart';
import 'Artboard24.dart';
import 'Artboard25.dart';

class Artboard23 extends StatefulWidget {
  const Artboard23({Key? key}) : super(key: key);

  @override
  _Artboard23State createState() => _Artboard23State();
}

class _Artboard23State extends State<Artboard23> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor('#019BE1'),
          elevation: 5,
          title: Text(
            S.of(context).Art4_marketing,
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
              Card_Gridview(title: S.of(context).Art23_planMarketingT,subtitle: S.of(context).Art23_planMarketingS,image: 'images/تسويق1.png'),
              Card_Gridview(title:S.of(context).Art23_SearchT,subtitle:   S.of(context).Art23_SearchS,image: 'images/تسويق2.png'),
              Card_Gridview(title:S.of(context).Art23_SocialMediaT ,subtitle: S.of(context).Art23_SocialMediaS,image: 'images/تسويق3.png'),
              Card_Gridview(title:S.of(context).Art23_MarketingAdviceT,subtitle:      S.of(context).Art23_MarketingAdviceS,image: 'images/تسويق666.png'),
              Card_Gridview(title:S.of(context).Art23_SocialMediaManagementS,subtitle:  S.of(context).Art23_SocialMediaManagementS,image: 'images/تسويق4.png'),
              Card_Gridview(title: S.of(context).Art23_WebsiteAnalysisT,subtitle: S.of(context).Art23_WebsiteAnalysisS,image: 'images/تسويق33.png'),
            ],
          ),
        ));
  }
}

