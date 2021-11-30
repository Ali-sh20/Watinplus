import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/generated/l10n.dart';
import 'package:watinplus/widgets/Card_Gridview.dart';
import 'package:watinplus/widgets/textStore.dart';

import '../size_config.dart';
import 'Artboard25.dart';

class Artboard24 extends StatefulWidget {
  const Artboard24({Key? key}) : super(key: key);

  @override
  _Artboard24State createState() => _Artboard24State();
}

class _Artboard24State extends State<Artboard24> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor('#019BE1'),
          elevation: 5,
          title: Text(
            S.of(context).Art4_content,
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
              Card_Gridview(title:S.of(context).Art24_SocialMediaContentT      ,subtitle:S.of(context).Art24_SocialMediaContentS      ,image: 'images/محتوى1.png'),
              Card_Gridview(title:S.of(context).Art24_ScriptWritingT           ,subtitle:S.of(context).Art24_ScriptWritingS           ,image: 'images/محتوى4.png'),
              Card_Gridview(title:S.of(context).Art24_bloggingT                ,subtitle:S.of(context).Art24_bloggingS                ,image: 'images/محتوى3.png'),
              Card_Gridview(title:S.of(context).Art24_WritingBusinessArticlesT ,subtitle:S.of(context).Art24_WritingBusinessArticlesS ,image: 'images/محتوى04.png'),
              Card_Gridview(title:S.of(context).Art24_corporateProfileT        ,subtitle:S.of(context).Art24_corporateProfileS        ,image: 'images/محتوى5.png'),
              Card_Gridview(title:S.of(context).Art24_TranslationT             ,subtitle:S.of(context).Art24_TranslationS             ,image: 'images/محتوى.6png.png'),
            ],
          ),
        ));
  }
}

