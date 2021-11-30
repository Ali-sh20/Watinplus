import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/generated/l10n.dart';
import 'package:watinplus/widgets/textStore.dart';

import '../size_config.dart';

class Artboard16 extends StatefulWidget {
  const Artboard16({Key? key}) : super(key: key);

  @override
  _Artboard16State createState() => _Artboard16State();
}

class _Artboard16State extends State<Artboard16> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: HexColor('#ffffff'),
      appBar: AppBar(
        backgroundColor: HexColor('#019BE1'),
        elevation: 5,
        title: Text(
         S.of(context).drawer_Settings,
          style: TextStyle(
              fontFamily: 'Ooredo',
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: HexColor('#FFFFFF')),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig().scaleWidth(15),
                vertical: SizeConfig().scaleHeight(20)),
            child: Column(children: [
              Row(children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/Artboard17');
                  },
                  child: textStore(
                      text:  S.of(context).Art16_perInfo,
                      fontsize: 15,
                      fontfamily: 'Ooredo',
                      fontWeight: FontWeight.w800,
                      hexcolor: '#5F5F5F'),
                )
              ]),
              SizedBox(height: SizeConfig().scaleHeight(10)),
              Divider(indent: 0, endIndent: 0,color: HexColor('#C1C1C1'),thickness: 2),
              SizedBox(height: SizeConfig().scaleHeight(10)),
              Row(children: [
                GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/Artboard18');
                      },
                  child: textStore(
                      text:  S.of(context).Art16_accSet,
                      fontsize: 15,
                      fontfamily: 'Ooredo',
                      fontWeight: FontWeight.w800,
                      hexcolor: '#5F5F5F'),
                )
              ]),
            ])),
      ),
    );
  }
}
