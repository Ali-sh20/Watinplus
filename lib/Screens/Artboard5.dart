
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/firebase/fb_auth_controller.dart';
import 'package:watinplus/generated/l10n.dart';
import 'package:watinplus/utils/helpers.dart';
import 'package:watinplus/widgets/app_textfield.dart';
import 'package:watinplus/widgets/textStore.dart';
import 'package:flutter/cupertino.dart';
import '../size_config.dart';

class Artboard5 extends StatefulWidget {
  final Locale local;
  Artboard5({required this.local});

  @override
  _Artboard5State createState() => _Artboard5State();
}

class _Artboard5State extends State<Artboard5> with Helpers {

  // String? countryValue;
  // String? stateValue;
  // String? cityValue;
  String dropdownvalue = '\+972';
  var items = ['\+970', '\+972', '\+974', '\+975', '\+976', '\+971'];
  // String dropdownvalue2 = 'الدولة';
  // var items2 = ['فلسطين', 'مصر', 'السعودية', 'الإمارات', 'الكويت'];
  // String dropdownvalue3 = 'المدينة';
  // var items3 = ['فلسطين', 'مصر', 'السعودية', 'الإمارات', 'الكويت'];
  int values = 1;
  late TextEditingController _phoneeditingController;
  late TapGestureRecognizer _tapGestureRecognizer;
  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;
  late TextEditingController _nameTextEditingController;
  late TextEditingController _CityTextEditingController;

  String? _emailError;
  String? _passwordError;
  String? _NameError;
  String? _CityError;
  @override
  void initState() {
    super.initState();
    _emailTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
    _nameTextEditingController = TextEditingController();
    _CityTextEditingController = TextEditingController();
    _phoneeditingController = TextEditingController();
    _tapGestureRecognizer = TapGestureRecognizer()
      ..onTap = navigaterToArtboard7;
  }

  void navigaterToArtboard7() {
    Navigator.pushNamed(context, '/Artboard7');
  }

  @override
  void dispose() {
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    _nameTextEditingController.dispose();
    _CityTextEditingController.dispose();
    _tapGestureRecognizer.dispose();
    _phoneeditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: HexColor('#FFFFFF'),
        body: ListView(
          children: [
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
                          RichText(
                              textAlign: TextAlign.start,
                              text: TextSpan(text: '', children: [
                                TextSpan(
                                    text: S.of(context).Art5_SignIn,
                                    recognizer: _tapGestureRecognizer,
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: HexColor('#6E7989'),
                                      fontFamily: widget.local=='en'?'Roboto':'Ooredo',
                                      fontWeight: FontWeight.w500,
                                    )),
                              ])),
                          Spacer(),
                          textStore(
                              text: S.of(context).Art5_SignUp,
                              fontsize:17,
                              fontfamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              hexcolor: '#019BE1'),
                        ]),
                        SizedBox(height: 23),
                        Row(
                          children: [
                            textStore(
                                text:S.of(context).Art5_Welcome ,
                                fontsize: 24,
                                fontfamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                hexcolor: '#272A3F')
                          ],
                        ),
                        SizedBox(height: SizeConfig().scaleHeight(2)),
                        Row(
                          children: [
                            textStore(
                                text: S.of(context).Art5_started,
                                fontsize: 16,
                                fontfamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                hexcolor: '#6E7989')
                          ],
                        ),
                        SizedBox(height: SizeConfig().scaleHeight(37)),
                        AppTextField(textEditingController: _nameTextEditingController, hint: 'الاسم', keyboardType: TextInputType.text),
                        SizedBox(height: SizeConfig().scaleHeight(35)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 65,
                              child: Expanded(
                                  child: DropdownButton(
                                style: TextStyle(
                                    fontSize: SizeConfig().scaleTextFont(14),
                                    fontFamily: widget.local=='en'?'Roboto':'Ooredo',
                                    fontWeight: FontWeight.w500,
                                    color: HexColor('#6E7989')),
                                underline: Container(
                                  height: 1.5,
                                  color: HexColor('#D8DAE0'),
                                ),
                                value: dropdownvalue,
                                icon: Icon(Icons.keyboard_arrow_down,color: HexColor('#6E7989')),
                                items: items.map((String items) {
                                  return DropdownMenuItem(
                                      value: items, child: Text(items));
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownvalue = newValue!;
                                  });
                                },
                              )),
                            ),
                            SizedBox(width: SizeConfig().scaleWidth(16)),
                            Expanded(
                              child: AppTextField(textEditingController: _phoneeditingController, hint: 'رقم الجوال', keyboardType: TextInputType.phone),
                            ),
                          ],
                        ),
                        SizedBox(height: SizeConfig().scaleHeight(35)),
                        AppTextField(textEditingController: _emailTextEditingController, hint: 'الايميل', keyboardType: TextInputType.emailAddress),
                        SizedBox(height: SizeConfig().scaleHeight(35)),
                        AppTextField(textEditingController: _passwordTextEditingController, hint: 'كلمة المرور', keyboardType: TextInputType.text,obscureText: false,),
                        SizedBox(height: SizeConfig().scaleHeight(35)),
                        AppTextField(textEditingController: _CityTextEditingController, hint: 'الدولة - المدينة', keyboardType: TextInputType.text),

                        // Row(
                        //   children: [
                        //     Container(
                        //       height: 65,
                        //       child: Expanded(
                        //           child: DropdownButton(
                        //             style: TextStyle(
                        //                 fontSize: SizeConfig().scaleTextFont(14),
                        //                 fontFamily: widget.local=='en'?'Roboto':'Ooredo',
                        //                 fontWeight: FontWeight.w500,
                        //                 color: HexColor('#6E7989')),
                        //             underline: Container(
                        //               height: 1.5,
                        //               color: HexColor('#D8DAE0'),
                        //             ),
                        //             value: dropdownvalue,
                        //             icon: Icon(Icons.keyboard_arrow_down,color: HexColor('#6E7989')),
                        //             items: items.map((String items) {
                        //               return DropdownMenuItem(
                        //                   value: items, child: Text(items));
                        //             }).toList(),
                        //             onChanged: (String? newValue) {
                        //               setState(() {
                        //                 dropdownvalue = newValue!;
                        //               });
                        //             },
                        //           )),
                        //     ),
                        //     SizedBox(width: SizeConfig().scaleWidth(50)),
                        //     Container(
                        //       height: 65,
                        //       child: Expanded(
                        //           child: DropdownButton(
                        //             style: TextStyle(
                        //                 fontSize: SizeConfig().scaleTextFont(14),
                        //                 fontFamily: widget.local=='en'?'Roboto':'Ooredo',
                        //                 fontWeight: FontWeight.w500,
                        //                 color: HexColor('#6E7989')),
                        //             underline: Container(
                        //               height: 1.5,
                        //               color: HexColor('#D8DAE0'),
                        //             ),
                        //             value: dropdownvalue,
                        //             icon: Icon(Icons.keyboard_arrow_down,color: HexColor('#6E7989')),
                        //             items: items.map((String items) {
                        //               return DropdownMenuItem(
                        //                   value: items, child: Text(items));
                        //             }).toList(),
                        //             onChanged: (String? newValue) {
                        //               setState(() {
                        //                 dropdownvalue = newValue!;
                        //               });
                        //             },
                        //           )),
                        //     ),
                        //     SizedBox(width: SizeConfig().scaleWidth(16)),
                        //   ],
                        // ),

                        SizedBox(height: SizeConfig().scaleHeight(35)),
                        Row(
                          children: [
                            Spacer(),
                            ElevatedButton(
                                onPressed: () async{
                                  await preformCreateAccount();
                                },
                                child: Text(
                                  S.of(context).Art5_NEXT,
                                  style: TextStyle(
                                      fontSize: SizeConfig().scaleTextFont(14),
                                      fontFamily: widget.local=='en'?'Roboto':'Ooredo',
                                      fontWeight: FontWeight.w500,
                                      color: HexColor('#FFFFFF')),
                                ),
                                style: ElevatedButton.styleFrom(
                                    minimumSize: Size(SizeConfig().scaleWidth(94), SizeConfig().scaleWidth(36)),
                                    primary: HexColor('#019BE1'),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4))))),
                          ],
                        ),

                      ]),
                ),
              ),
            ),
          ],
        )


    );


  }
  Future<void> preformCreateAccount() async {
    if(checkData()){
      print('we are here');
      await createAccount();
    }
  }
  bool checkData(){
    if(_emailTextEditingController.text.isNotEmpty&&_passwordTextEditingController.text.isNotEmpty){
      return true;
    }

    showSnackBar(context, message: 'Enter required data',error: true);

    return false;
  }
  Future<void> createAccount() async{
    bool status =await FbAuthController().createAccount(context: context, email: _emailTextEditingController.text, password: _passwordTextEditingController.text);
    if(status) {
      Navigator.pushReplacementNamed(context, '/Artboard7');
      // clear();
    } }


// Future<void> preformLogin() async {
  //   if(checkData()){
  //     await login();
  //   }
  // }
  // bool checkData(){
  //   if(_emailTextEditingController.text.isNotEmpty&&_passwordTextEditingController.text.isNotEmpty){
  //     return true;
  //   }
  //   showMessage(context, message: 'Enter required data',error: true);
  //
  //   return false;
  // }
  // Future<void> login() async{
  //   bool status =await FbAuthController().signIn(context: context, email: _emailTextEditingController.text, password: _passwordTextEditingController.text);
  //   if(status) Navigator.pushReplacementNamed(context, '/main_screen');
  // }




}

