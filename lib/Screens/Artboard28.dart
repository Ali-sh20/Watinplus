import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/generated/l10n.dart';
import 'package:watinplus/widgets/Card_Gridview.dart';
import 'package:watinplus/widgets/textStore.dart';

import '../size_config.dart';

class Artboard28 extends StatefulWidget {
  const Artboard28({Key? key}) : super(key: key);

  @override
  _Artboard28State createState() => _Artboard28State();
}

class _Artboard28State extends State<Artboard28> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor('#019BE1'),
          elevation: 5,
          title: Text(
            S.of(context).Art4_administration,
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
              Card_Gridview(title: S.of(context).Art28_managementAdviceT,subtitle: S.of(context).Art28_managementAdviceT,image: 'images/إدارة1.png'),
              Card_Gridview(title:S.of(context).Art28_businessPlanT,subtitle: S.of(context).Art28_businessPlanS,image: 'images/ادارة2.png'),
              Card_Gridview(title: S.of(context).Art28_FeasibilityStudyT,subtitle: S.of(context).Art28_FeasibilityStudyS,image: 'images/ادارة3.png'),
              Card_Gridview(title: S.of(context).Art28_DataEntryT,subtitle: S.of(context).Art28_DataEntryS,image: 'images/ادارة4.png'),
              Card_Gridview(title: S.of(context).Art28_FinancialServicesT,subtitle: S.of(context).Art28_FinancialServicesS,image: 'images/ادارة5.png'),
              Card_Gridview(title: S.of(context).Art28_scientificResearchT,subtitle: S.of(context).Art28_scientificResearchT,image: 'images/ادارة6.png'),
            ],
          ),
        ));
  }
}

