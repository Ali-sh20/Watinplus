import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/fb_auth_controller/FbAuthController.dart';
import 'package:watinplus/size_config.dart';

class Artboard1 extends StatefulWidget {
  @override
  _Artboard1State createState() => _Artboard1State();
}

class _Artboard1State extends State<Artboard1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){

      String route=
      FbAuthController().isLoggedIn?'/Home_Screen':'/onboardingScreen';

      Navigator.pushReplacementNamed(context,route);
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: HexColor('#019BE1'),
      body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
          padding:  EdgeInsets.only(left: SizeConfig().scaleWidth(52)),
          child: Image.asset('images/watin.png'),
        ),
            ),
            Expanded(
              child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: 'Welcome to\n',
                  style: TextStyle(
                       fontWeight: FontWeight.w500,
                       fontSize:30,
                       color: HexColor('#ffffff'),
                       fontFamily: 'Ooredo'
                  ),
                  children: [
                    TextSpan(
                        text: 'WATINPLUS',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize:SizeConfig().scaleTextFont(33),
                            color: HexColor('#ffffff'),
                            fontFamily: 'Ooredo'
                        )),
                  ])),
            ),


          ]),
    );
  }
}
