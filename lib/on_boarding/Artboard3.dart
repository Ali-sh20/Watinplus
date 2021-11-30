import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/generated/l10n.dart';
import 'package:watinplus/size_config.dart';
import 'package:watinplus/widgets/textStore.dart';

class Artboard3 extends StatefulWidget {
  const Artboard3({Key? key}) : super(key: key);

  @override
  _Artboard3State createState() => _Artboard3State();
}

class _Artboard3State extends State<Artboard3> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ListView(
      children: [
        Padding(
          padding:  EdgeInsets.only(top: SizeConfig().scaleHeight(30)),
          child: Column(
            children: [
              RowArtboard3(
                  image: 'images/watin22.png', title: S.of(context).Art3_user, counter: 1000),
              Divider(color: HexColor('#E4E4E4')),
              RowArtboard3(
                image: 'images/note.png',
                title: S.of(context).Art3_project,
                counter: 100,
                paddingleft: 15,
              ),
              Divider(color: HexColor('#E4E4E4')),
              RowArtboard3(
                  image: 'images/cooperation.png',
                  title: S.of(context).Art3_team,
                  counter: 25),
            ],
          ),
        ),
      ],
    );
  }
}

class RowArtboard3 extends StatelessWidget {
  late String image;
  late String title;
  late num counter;
  late double paddingleft;

  RowArtboard3({
    required this.image,
    required this.title,
    required this.counter,
    this.paddingleft=0
  });
  int mockUpHeight=812;
  int mockUpWidth=375;
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final scale=mockUpWidth/width;
    final textScaleFactor=width/mockUpWidth;
    return Padding(
      padding:  EdgeInsets.only(top: SizeConfig().scaleHeight(30), left: SizeConfig().scaleWidth(10), right:  SizeConfig().scaleWidth(10), bottom: SizeConfig().scaleHeight(35)),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Column(children: [
          CircleAvatar(
            backgroundColor: HexColor('#E4E4E4'),
            radius: 50/mockUpWidth*width,
            // SizeConfig().scaleHeight(50),
            child: Padding(
              padding:  EdgeInsets.only(left: SizeConfig().scaleHeight(paddingleft)),
              child: Image.asset(image),
            ),
          )
        ]),
        SizedBox(width: SizeConfig().scaleWidth(9)
    ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          textStore(
            text: counter >= 1000
                ? '${counter/1000}'+'K'+'+'
                : '${counter}'+'+',
            fontfamily: 'Ooredo',
            hexcolor: '#5F5F5F',
            fontsize: 29,
            fontWeight: FontWeight.w800,
          ),
          SizedBox(height: SizeConfig().scaleHeight(10),),
          textStore(
            text: title,
            fontfamily: 'Ooredo',
            hexcolor: '#9A9A9A',
            fontsize: 18,
            fontWeight: FontWeight.w800,
          ),
        ])
      ]),
    );
  }
}
