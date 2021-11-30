import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/generated/l10n.dart';
import 'package:watinplus/widgets/Card_Gridview.dart';
import 'package:watinplus/widgets/textStore.dart';

import '../size_config.dart';

class Artboard25 extends StatefulWidget {
  const Artboard25({Key? key}) : super(key: key);

  @override
  _Artboard25State createState() => _Artboard25State();
}

class _Artboard25State extends State<Artboard25> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor('#019BE1'),
          elevation: 5,
          title: Text(
            S.of(context).Art4_video,
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
              Card_Gridview(title:S.of(context).Art25_WhiteboardT       ,   subtitle: S.of(context).Art25_WhiteboardT,image: 'images/فيديو1.png'),
              Card_Gridview(title:S.of(context).Art25_VideoProducerT    , subtitle: S.of(context).Art25_VideoProducerT ,image: 'images/فيديو2.png'),
              Card_Gridview(title:S.of(context).Art25_MotionGraphicsT   , subtitle: S.of(context).Art25_MotionGraphicsS,image: 'images/فيديو3.png'),
              Card_Gridview(title:S.of(context).Art25_AudioCommentaryT  ,subtitle: S.of(context).Art25_AudioCommentaryT,image: 'images/فيديو4.png'),
              Card_Gridview(title:S.of(context).Art25_EditVideoT   , subtitle: S.of(context).Art25_EditVideoS ,image: 'images/فيديو5.png'),
              Card_Gridview(title:S.of(context).Art25_introT         ,       subtitle:S.of(context).Art25_introS ,image: 'images/فيديو6.png'),
            ],
          ),
        ));
  }
}

