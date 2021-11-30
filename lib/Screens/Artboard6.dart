import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/generated/l10n.dart';
import 'package:watinplus/size_config.dart';
import 'package:watinplus/widgets/textStore.dart';

class Artboard6 extends StatefulWidget {
  final Locale? local;
  Artboard6({ this.local});

  @override
  _Artboard6State createState() => _Artboard6State();
}

class _Artboard6State extends State<Artboard6> {
  late TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer()
      ..onTap = navigaterToArtboard1;
  }

  void navigaterToArtboard1() {
    Navigator.pushNamed(context, '/Artboard1');
  }

  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: HexColor('#019BE1'),
      body: Column(
          children: [
            Expanded(
              flex: 3,
              child:  Container(
                color:HexColor('#019BE1') ,
                child: Center(
                  child:Image.asset('images/watin.png'),
                ),
              ),),
            Expanded(
              child: Card(
                color: HexColor('#FFFFFF'),
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      topLeft: Radius.circular(12)),
                ),
                child: Padding(
                  padding:  EdgeInsets.only(top: SizeConfig().scaleHeight(22), left: SizeConfig().scaleWidth(16),right: SizeConfig().scaleHeight(15)),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              SizedBox(height:SizeConfig().scaleHeight(8)),
                              CircleAvatar(
                                radius: SizeConfig().scaleHeight(20),
                                backgroundColor: HexColor('#019BE1'),
                                child: Icon(Icons.check,
                                    color: HexColor('#FFFFFF')),
                              )
                            ],
                          ),
                          SizedBox(width: SizeConfig().scaleWidth(10)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              textStore(
                                  text: S.of(context).Art6_Congratulations,
                                  fontsize: 24,
                                  fontfamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  hexcolor: '#272A3F'),
                              SizedBox(height:SizeConfig().scaleHeight(2)),
                              textStore(
                                  text: S.of(context).Art6_Congratulations2,
                                  fontsize: 16,
                                  fontfamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  hexcolor: '#6E7989'),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: SizeConfig().scaleHeight(28)),
                      Row(children: [
                        Spacer(),
                        RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                text: '',
                                children: [
                                  TextSpan(
                                      text: S.of(context).Art6_LATER,
                                      recognizer: _tapGestureRecognizer,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: HexColor('#019BE1'),
                                        fontFamily: widget.local=='en'?'Roboto':'Ooredo',
                                        fontWeight: FontWeight.w500,
                                      )),
                                ])),
                        SizedBox(width: SizeConfig().scaleHeight(30),),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/Artboard7');
                            },
                            child: Text(
                              S.of(context).Art5_SignIn,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: widget.local=='en'?'Roboto':'Ooredo',
                                  fontWeight: FontWeight.w500,
                                  color: HexColor('#ffffff')),
                            ),
                            style: ElevatedButton.styleFrom(
                                elevation: 4,
                                minimumSize: Size(SizeConfig().scaleWidth(94), SizeConfig().scaleHeight(36)),
                                primary: HexColor('#019BE1'),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(4))))),
                      ])
                    ],
                  ),
                ),
              ),
            )
          ]),
    );
  }
}
