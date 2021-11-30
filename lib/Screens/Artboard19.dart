import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/generated/l10n.dart';
import 'package:watinplus/widgets/textStore.dart';

import '../size_config.dart';

class Artboard19 extends StatefulWidget {
  const Artboard19({Key? key}) : super(key: key);

  @override
  _Artboard19State createState() => _Artboard19State();
}

class _Artboard19State extends State<Artboard19> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#019BE1'),
        elevation: 5,
        title: Text(
          S.of(context).drawer_About,
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
              horizontal: SizeConfig().scaleWidth(20),
              vertical: SizeConfig().scaleHeight(100)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('images/watinplus1.png'),
              SizedBox(height: SizeConfig().scaleHeight(20)),
              textStore(
                  text: S.of(context).Art19_about,
                  fontsize: 15,
                  fontfamily: 'Ooredo',
                  fontWeight: FontWeight.w800,
                  hexcolor: '#5F5F5F',
                  textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig().scaleHeight(65)),
              textStore(
                  text:  S.of(context).Art18_communication,
                  fontsize: SizeConfig().scaleTextFont(20),
                  fontfamily: 'Ooredo',
                  fontWeight: FontWeight.w800,
                  hexcolor: '#5F5F5F'),
              SizedBox(height: SizeConfig().scaleHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Circle_artboard19(path: 'images/Path 3343.png'),
                SizedBox(width:SizeConfig().scaleWidth(8)),
                Circle_artboard19(path: 'images/Group 1346.png'),
                SizedBox(width:SizeConfig().scaleWidth(8)),
                Circle_artboard19(path: 'images/Group 1348.png'),
                SizedBox(width:SizeConfig().scaleWidth(8)),
                Circle_artboard19(path: 'images/snap.png'),
                SizedBox(width:SizeConfig().scaleWidth(8)),
                Circle_artboard19(path: 'images/Path 3344.png'),
                SizedBox(width:SizeConfig().scaleWidth(8)),
                Circle_artboard19(path: 'images/Group 1350.png'),
              ]),
              SizedBox(height: SizeConfig().scaleHeight(65)),
              textStore(
                  text: S.of(context).Art18_Payment,
                  fontsize: SizeConfig().scaleTextFont(20),
                  fontfamily: 'Ooredo',
                  fontWeight: FontWeight.w800,
                  hexcolor: '#5F5F5F'),
              SizedBox(height: SizeConfig().scaleHeight(25)),
              Image.asset('images/وسائل-الدفع.png')

            ]
          ),
        ),
      ),
    );
  }
}

class Circle_artboard19 extends StatelessWidget {
  final String path;
  Circle_artboard19(
  {
    required this.path
}
      );

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(radius: 18,backgroundColor: HexColor('#019BE1'),child: Image.asset(path));
  }
}
