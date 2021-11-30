import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/generated/l10n.dart';
import 'package:watinplus/size_config.dart';
import 'package:watinplus/widgets/textStore.dart';

class Artboard4 extends StatefulWidget {
  const Artboard4({Key? key}) : super(key: key);

  @override
  _Artboard4State createState() => _Artboard4State();
}

class _Artboard4State extends State<Artboard4> {
  @override
  int mockUpHeight=812;
  int mockUpWidth=375;
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    final scale=mockUpWidth/width;
    final textScaleFactor=width/mockUpWidth;
    SizeConfig().init(context);
    return ListView(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 0, left: 30, right: 20),
              child: Column(
                children: [
                  Center(child: Image.asset('images/1626122106_5596.png')),
                  textStore(
                    text: S.of(context).Art4_1,
                    fontfamily: 'Ooredo',
                    hexcolor: '#5F5F5F',
                    fontsize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                  SizedBox(height:
                      // 15/mockUpWidth*height
                  SizeConfig().scaleHeight(15)
                  ),
                  textStore(
                    text:
                    S.of(context).Art4_2,
                    fontfamily: 'Ooredo',
                    hexcolor: '#5F5F5F',
                    fontsize:11.5,
                    fontWeight: FontWeight.w800,
                  ),
                  SizedBox(height:
                  // 15/mockUpWidth*height
                    SizeConfig().scaleHeight(15)
                  ),

                  SizedBox(height: SizeConfig().scaleHeight(15)),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(children: [
                      RowArtboard4(title: S.of(context).Art4_design,),
                      SizedBox(height:7),
                      RowArtboard4(title: S.of(context).Art4_marketing,),
                      SizedBox(height:7),
                      RowArtboard4(title: S.of(context).Art4_content,),
                      SizedBox(height:7),
                        RowArtboard4(title:S.of(context).Art4_video,),
                      SizedBox(height:7),
                      RowArtboard4(title: S.of(context).Art4_programing,),
                      SizedBox(height:7),
                      RowArtboard4(title: S.of(context).Art4_administration,),
                      SizedBox(height:7),
                      RowArtboard4(title:S.of(context).Art4_engineering,),
                    ]),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class RowArtboard4 extends StatelessWidget {

final String title;
RowArtboard4({
  required this.title
});
int mockUpHeight=812;
int mockUpWidth=375;
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final scale=mockUpWidth/width;
    final textScaleFactor=width/mockUpWidth;
    return Row(children: [
      Icon(Icons.check_circle_outlined,
          color: HexColor('#019BE1'), size: 30/mockUpWidth*width
          // SizeConfig().scaleHeight(30)
      ),
      SizedBox(width:15/mockUpWidth*width
      // SizeConfig().scaleWidth(15)

      ),
      textStore(
        text:
        title,
        fontfamily: 'Ooredo',
        hexcolor: '#9A9A9A',
        fontsize: 15,
        fontWeight: FontWeight.w800,
      ),
    ]);
  }
}
