import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/Screens/Artboard5.dart';
import 'package:watinplus/firebase/fb_notifications.dart';
import 'package:watinplus/firebase/fb_auth_controller.dart';
import 'package:watinplus/generated/l10n.dart';
import 'package:watinplus/utils/helpers.dart';
import 'package:watinplus/widgets/app_textfield.dart';
import 'package:watinplus/widgets/textStore.dart';

import '../size_config.dart';

class Artboard7 extends StatefulWidget{
  final Locale local;
  Artboard7({required this.local});

  @override
  _Artboard7State createState() => _Artboard7State();
}

class _Artboard7State extends State<Artboard7>  with Helpers, FbNotifications{

  late TapGestureRecognizer _tapGestureRecognizer1;
  late TapGestureRecognizer _tapGestureRecognizer2;
  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;

  String? _emailError;
  String? _passwordError;
  @override
  void initState() {
    super.initState();
    _emailTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
    _tapGestureRecognizer2 = TapGestureRecognizer()
      ..onTap = navigaterToArtboard15;
    _tapGestureRecognizer1 = TapGestureRecognizer()
      ..onTap = navigaterToArtboard5;
    requestNotificationPermissions();
  }

  void navigaterToArtboard5() {
    Navigator.pushNamed(context, '/Artboard5');
  }

  void navigaterToArtboard15() {
    Navigator.pushNamed(context, '/Change_password');
  }

  @override
  void dispose() {
    _tapGestureRecognizer2.dispose();
    _tapGestureRecognizer1.dispose();
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: HexColor('#FFFFFF'),
      body: ListView(children: [
        Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12))),
          margin: EdgeInsets.zero,
          elevation: 15,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: SizeConfig().scaleWidth(16),vertical: SizeConfig().scaleHeight(20)),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(children: [
                    textStore(
                        text: S.of(context).Art5_SignIn,
                        fontsize: 17,
                        fontfamily: '',
                        fontWeight: FontWeight.w700,
                        hexcolor: '#019BE1'),
                    Spacer(),
                    RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(text: '', children: [
                          TextSpan(
                              text: S.of(context).Art5_SignUp,
                              recognizer: _tapGestureRecognizer1,
                              style: TextStyle(
                                fontSize: 17,
                                color: HexColor('#6E7989'),
                                fontFamily: widget.local=='en'?'Roboto':'Ooredo',
                                fontWeight: FontWeight.w500,
                              )),
                        ])),
                  ]),
                  SizedBox(height: 23),
                  Row(
                    children: [
                      textStore(
                          text: S.of(context).Art7_SignWATINPLUS,
                          fontsize: 21,
                          fontfamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          hexcolor: '#272A3F')
                    ],
                  ),
                  SizedBox(height: 7),
                  Row(
                    children: [
                      textStore(
                          text: S.of(context).Art7_Enter,
                          fontsize: 16,
                          fontfamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          hexcolor: '#6E7989')
                    ],
                  ),
                  SizedBox(height: 37),
                  AppTextField(textEditingController: _emailTextEditingController, hint: 'الايميل', keyboardType: TextInputType.emailAddress,locale:widget.local),

                  // TextField(
                  //   controller: _emailTextEditingController,
                  //   keyboardType: TextInputType.text,
                  //   style: TextStyle(
                  //       color: HexColor('#272A3F'),
                  //       fontSize: 16,
                  //       fontWeight: FontWeight.w500,
                  //       fontFamily: 'Roboto'),
                  //   cursorColor: Colors.black,
                  //   enabled: true,
                  //   decoration: InputDecoration(
                  //     enabledBorder: UnderlineInputBorder(
                  //         borderSide:
                  //             BorderSide(color: HexColor('#D8DAE0'), width: 1)),
                  //     focusedBorder: UnderlineInputBorder(
                  //         borderSide: BorderSide(
                  //       color: HexColor('#D8DAE0'),
                  //     )),
                  //     hintText: S.of(context).Art5_Email,
                  //     hintStyle: TextStyle(
                  //         color: HexColor('#99A0B0'),
                  //         fontSize: 16,
                  //         fontWeight: FontWeight.w400,
                  //         fontFamily: 'Roboto'),
                  //   ),
                  // ),
                  SizedBox(height: 35),
                  AppTextField(textEditingController: _passwordTextEditingController, hint: 'كلمة المرور', keyboardType: TextInputType.text,obscureText: false,locale:widget.local),

                  // TextField(
                  //   controller: _passwordTextEditingController,
                  //   obscureText: false,
                  //   obscuringCharacter: '.',
                  //   keyboardType: TextInputType.text,
                  //   style: TextStyle(
                  //       color: HexColor('#272A3F'),
                  //       fontSize: 18,
                  //       fontWeight: FontWeight.w500,
                  //       fontFamily: 'Roboto'),
                  //   cursorColor: Colors.black,
                  //   enabled: true,
                  //   decoration: InputDecoration(
                  //     enabledBorder: UnderlineInputBorder(
                  //         borderSide:
                  //             BorderSide(color: HexColor('#D8DAE0'), width: 1)),
                  //     focusedBorder: UnderlineInputBorder(
                  //         borderSide: BorderSide(
                  //       color: HexColor('#D8DAE0'),
                  //     )),
                  //     hintText: S.of(context).Art5_Password,
                  //     hintStyle: TextStyle(
                  //         color: HexColor('#99A0B0'),
                  //         fontSize: 16,
                  //         fontWeight: FontWeight.w400,
                  //         fontFamily: 'Roboto'),
                  //   ),
                  // ),
                  SizedBox(height: 24),
                  Row(
                    children: [
                      RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(text: '', children: [
                            TextSpan(
                                text: S.of(context).Art7_Forgot,
                                recognizer: _tapGestureRecognizer2,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: HexColor('#6E7989'),
                                  fontFamily: widget.local=='en'?'Roboto':'Ooredo',
                                  fontWeight: FontWeight.w500,
                                )),
                          ])),
                      Spacer(),
                      ElevatedButton(
                          onPressed: () async=> await preformLogin(),
                          child: Text(
                            S.of(context).Art7_SignIn,
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: widget.local=='en'?'Roboto':'Ooredo',
                                fontWeight: FontWeight.w500,
                                color: HexColor('#FFFFFF')),
                          ),
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(94, 36),
                              primary: HexColor('#019BE1'),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(4))))),
                    ],
                  ),
                  SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ),
      ])
    );
  }

  Future<void> preformLogin() async {
    if(checkData()){
      await login();
    }
  }
  bool checkData(){
    if(_emailTextEditingController.text.isNotEmpty&&_passwordTextEditingController.text.isNotEmpty){
      return true;
    }
    showSnackBar(context, message: 'Enter required data',error: true);

    return false;
  }
  Future<void> login() async{
    bool status =await FbAuthController().signIn(context: context, email: _emailTextEditingController.text, password: _passwordTextEditingController.text);
    if(status) Navigator.pushReplacementNamed(context, '/Home_Screen');
  }
}
