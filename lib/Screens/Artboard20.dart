import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/generated/l10n.dart';
import 'package:watinplus/widgets/textStore.dart';
import 'package:readmore/readmore.dart';
import '../size_config.dart';

class Artboard20 extends StatefulWidget {
  const Artboard20({Key? key}) : super(key: key);

  @override
  _Artboard20State createState() => _Artboard20State();
}

class _Artboard20State extends State<Artboard20> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#019BE1'),
        elevation: 5,
        title: Text(

          S.of(context).Art20_Tips,
          style: TextStyle(
              fontFamily: 'Ooredo',
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: HexColor('#FFFFFF')),
        ),
      ),
      backgroundColor: HexColor('#ffffff'),
      body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig().scaleWidth(12.5),
                  vertical: SizeConfig().scaleWidth(10)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Image.asset('images/1629025788_2933.png'),
                SizedBox(height: SizeConfig().scaleHeight(20)),
                ReadMoreText(
                  S.of(context).Art20_Tips1,
                  style: TextStyle(
                      fontSize: SizeConfig().scaleTextFont(12),
                      fontFamily: 'Ooredo',
                      fontWeight: FontWeight.w800,
                      color: HexColor('#5F5F5F')),
                  trimLines: 3,
                  colorClickableText: Colors.black,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: '${S.of(context).Art20_more}',
                  trimExpandedText: ' ${S.of(context).Art20_less} ',
                ),
                SizedBox(height: SizeConfig().scaleHeight(50)),
                Image.asset('images/1629025853_2628.png'),
                SizedBox(height: SizeConfig().scaleHeight(20)),
                ReadMoreText(
                      S.of(context).Art20_Tips2,
                      style: TextStyle(
                          fontSize: SizeConfig().scaleTextFont(12),
                          fontFamily: 'Ooredo',
                          fontWeight: FontWeight.w800,
                          color: HexColor('#5F5F5F')),
                      trimLines: 3,
                      colorClickableText: Colors.black,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: '${S.of(context).Art20_more}',
                      trimExpandedText: '${S.of(context).Art20_less}',
                    ),
              ]))),
    );
  }
}
