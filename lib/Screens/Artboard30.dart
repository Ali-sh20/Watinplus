import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:readmore/readmore.dart';
import 'package:watinplus/generated/l10n.dart';
import 'package:watinplus/widgets/Card_Gridview.dart';
import 'package:watinplus/widgets/textStore.dart';

import '../size_config.dart';

class Artboard30 extends StatefulWidget {
  const Artboard30({Key? key}) : super(key: key);

  @override
  _Artboard30State createState() => _Artboard30State();
}

class _Artboard30State extends State<Artboard30> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: HexColor('#019BE1'),
              elevation: 5,
              title: Text(
                S.of(context).drawer_TechnicalSupport,
                style: TextStyle(
                    fontFamily: 'Ooredo',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: HexColor('#FFFFFF')),
              ),
            ),
            backgroundColor: HexColor('#ffffff'),
            body:  Stack(
                  children: [
             Padding(
               padding: EdgeInsets.symmetric(
                   vertical: SizeConfig().scaleHeight(10),
                   horizontal: SizeConfig().scaleWidth(50)),
               child: textStore(
                   text: S.of(context).Art30_providerT,
                   fontsize: 14.5,
                   fontfamily: 'Ooredo',
                   fontWeight: FontWeight.w800,
                   hexcolor: '#5F5F5F'),
             ),
             Padding(
               padding: EdgeInsets.only(
                   top: SizeConfig().scaleHeight(40),
                   right: SizeConfig().scaleWidth(25),
                   left: SizeConfig().scaleWidth(25)),
               child: GridView(
                 scrollDirection: Axis.vertical,
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 2,
                     crossAxisSpacing: SizeConfig().scaleWidth(17),
                     mainAxisSpacing: SizeConfig().scaleHeight(20),
                     mainAxisExtent: SizeConfig().scaleHeight(140)),
                 children: [
                   Card_Gridview2(
                       title: S.of(context).Art30_HelpT,
                       subtitle:
                       S.of(context).Art30_HelpS,
                       image: 'images/ايقون 1.png'),
                   Card_Gridview2(
                       title: S.of(context).Art30_supportT,
                       subtitle:
                       S.of(context).Art30_supportS,
                       image: 'images/ايقون 2.png'),
                   Card_Gridview2(
                       title: S.of(context).Art30_DeveloperT,
                       subtitle:
                       S.of(context).Art30_DeveloperS,
                       image: 'images/ايقون 3.png'),
                   Card_Gridview2(
                       title: S.of(context).Art30_HelpT,
                       subtitle:
                       S.of(context).Art30_HelpS2,
                       image: 'images/ايقون 1.png'),
                   Card_Gridview2(
                       title: S.of(context).Art30_supportT,
                       subtitle:
                       S.of(context).Art30_supportS2,
                       image: 'images/ايقون 2.png'),
                   Card_Gridview2(
                       title: S.of(context).Art30_DeveloperT,
                       subtitle:
                       S.of(context).Art30_DeveloperS2,
                       image: 'images/ايقون 3.png'),
                 ],
               ),
             ),
             ListView(
               children: [
                 Padding(
                   padding: EdgeInsets.only(
                     top: SizeConfig().scaleHeight(520),
                     // bottom: SizeConfig().scaleHeight(520),
                     left: SizeConfig().scaleWidth(25),
                     right: SizeConfig().scaleWidth(25),

                   ),

                   child: Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         textStore(
                             text: S.of(context).Art30_NoSolutionT,
                             fontsize: 15,
                             fontfamily: 'Ooredo',
                             fontWeight: FontWeight.w800,
                             hexcolor: '#5F5F5F'),
                         SizedBox(height: SizeConfig().scaleHeight(5)),
                         textStore(
                             textAlign: TextAlign.center,
                             text:
                             S.of(context).Art30_NoSolutionS,
                             fontsize: 10,
                             fontfamily: 'Ooredo',
                             fontWeight: FontWeight.w800,
                             hexcolor: '#5F5F5F'),
                         SizedBox(height: SizeConfig().scaleHeight(15)),
                         Card(
                             clipBehavior: Clip.antiAlias,
                             color: HexColor('#F2F1F1'),
                             elevation: 15,
                             margin: EdgeInsets.zero,
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(10),
                             ),
                             child: Padding(
                                 padding: EdgeInsets.symmetric(
                                     vertical: SizeConfig().scaleHeight(10),
                                     horizontal: SizeConfig().scaleWidth(10)),
                                 child: Container(
                                   width: SizeConfig().scaleWidth(319),
                                   child: Column(children: [
                                     textStore(
                                         text: S.of(context).Art30_knowledgeBaseT,
                                         fontsize: 15,
                                         fontfamily: 'Ooredo',
                                         fontWeight: FontWeight.w800,
                                         hexcolor: '#5F5F5F'),
                                     SizedBox(height: SizeConfig().scaleHeight(5)),
                                     textStore(
                                         textAlign: TextAlign.center,
                                         text:
                                          S.of(context).Art30_knowledgeBaseS,
                                         fontsize: 8,
                                         fontfamily: 'Ooredo',
                                         fontWeight: FontWeight.w800,
                                         hexcolor: '#5F5F5F'),
                                     SizedBox(height: SizeConfig().scaleHeight(5)),
                                     ElevatedButton(
                                         onPressed: () {
                                           Navigator.pushReplacementNamed(
                                               context, '/Artboard31');
                                         },
                                         child: textStore(
                                             text: S.of(context).Art30_helpPage,
                                             fontsize: 12,
                                             fontfamily: 'Ooredo',
                                             fontWeight: FontWeight.w600,
                                             hexcolor: '#ffffff'),
                                         style: ElevatedButton.styleFrom(
                                             elevation: 4,
                                             minimumSize: Size(80, 36),
                                             primary: HexColor('#019BE1'),
                                             shape: RoundedRectangleBorder(
                                                 borderRadius: BorderRadius.all(
                                                     Radius.circular(4))))),
                                   ]),
                                 )))
                       ]),
                 ),
               ],
             )
              ]),
            ));
  }
}
  class Card_Gridview2 extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  Card_Gridview2({
  required this.subtitle,
  required this.title,
  required this.image,
  });
  @override
  Widget build(BuildContext context) {
  SizeConfig().init(context);
  return GestureDetector(
  onTap: () {
  },
  child: Card(
  clipBehavior: Clip.antiAlias,
  color: HexColor('#ffffff'),
  elevation: 5,
  margin: EdgeInsets.zero,
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(10),
  ),
  child: Column(
  children: [
  Expanded(
  flex: 2,
  child: Image.asset(
  image,
  ),
  ),
  Expanded(
  flex: 3,
  child: Card(
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(0),
  ),
  elevation: 5,
  margin: EdgeInsets.all(0),
  color: HexColor('#019BE1'),
  child: Container(
  width: double.infinity,
  child: Padding(
  padding:  EdgeInsets.all(5),
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
  SizedBox(height: 1),
  textStore(
  text: title,
  fontsize: 12,
  fontfamily: 'Ooredo',
  fontWeight: FontWeight.w800,
  hexcolor: '#FFFFFF'),
  SizedBox(height: SizeConfig().scaleHeight(9)),
  textStore(
  textAlign: TextAlign.center,
  text: subtitle,
  fontsize: 7,
  fontfamily: 'Ooredo',
  fontWeight: FontWeight.w600,
  hexcolor: '#FFFFFF'),
  ]),
  ),
  ),
  ),
  ),
  ],
  ),
  ),
  );
  }
  }



