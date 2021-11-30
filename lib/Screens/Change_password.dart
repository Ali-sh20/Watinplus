import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/size_config.dart';
import 'package:watinplus/utils/helpers.dart';
import 'package:watinplus/widgets/app_textfield.dart';
import 'package:watinplus/widgets/textStore.dart';

import 'Artboard15.dart';

class Change_password extends StatefulWidget {
  final Locale local;
  Change_password({required this.local});

  @override
  _Change_passwordState createState() => _Change_passwordState();
}

class _Change_passwordState extends State<Change_password> with Helpers {
  late TextEditingController _Phone;
  String? _PhoneError;
  @override
  void initState() {
    super.initState();
    _Phone = TextEditingController();
  }

  @override
  void dispose() {
    _Phone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#019BE1'),
        elevation: 5,
        title: textStore(
          text: 'إعادة تعيين كلمة المرور',
          fontsize: 20,
          fontfamily: 'Roboto',
          hexcolor: '#ffffff',
          fontWeight: FontWeight.w500,
        ),
      ),
      body: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12))),
        margin: EdgeInsets.zero,
        elevation: 15,
        child: Container(
          height: SizeConfig().scaleHeight(230),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 41, left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textStore(
                    text: 'ادخل الايميل لإرسال الكود',
                    fontsize: 20,
                    fontfamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    hexcolor: '#6E7989'),
                SizedBox(height: 37),
                AppTextField(textEditingController: _Phone, hint: 'ادخل الايميل', keyboardType: TextInputType.emailAddress),
                SizedBox(height: 24),
                Row(
                  children: [
                    Spacer(),
                    ElevatedButton(
                        onPressed: ()  {
                          // await preformPhone();
                          Navigator.pushReplacement(context,MaterialPageRoute(
                              builder: (context) => Artboard15(
                            phone: _Phone.text
                          ),
                          ));
                        },
                        child: Text(
                          'ارسل',
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
    );
  }

  Future preformPhone() async {
   // if (cheekData()) await send();
  }

  bool cheekData() {
    if (_Phone.text.isNotEmpty) {
      _PhoneError = null;
      return true;
    }
    cheekTextfeilderror();
    showSnackBar(context, message: 'Enter required data',error: true);
    return false;
  }

  void cheekTextfeilderror() {
    setState(() {
      _PhoneError = _Phone.text.isEmpty ? 'Enter Phone' : null;
    });
  }

  // Future send() async {
  //  bool status =await ProfileApiController().forgetPassword(context, phone:  _Phone.text);
  //   if(status){
  //   Navigator.pushReplacement(context,MaterialPageRoute(
  //     builder: (context) => Artboard15(
  //       phone: _Phone.text,
  //     ),
  // )
  //   ),);
  //   }
  // }
}
