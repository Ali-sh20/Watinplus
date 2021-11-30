import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/generated/l10n.dart';
import 'package:watinplus/main.dart';
import 'package:watinplus/widgets/textStore.dart';
import '../size_config.dart';

class Artboard18 extends StatefulWidget {
  const Artboard18({Key? key}) : super(key: key);

  @override
  _Artboard18State createState() => _Artboard18State();
}

class _Artboard18State extends State<Artboard18> {
  late TextEditingController _NnameaccounteditingController;
  late TextEditingController _emailTextEditingController;
  late TextEditingController _phoneTextEditingController;
  late TextEditingController _passwordTextEditingController;

  @override
  void initState() {
    super.initState();
    _emailTextEditingController =
        TextEditingController(text: 'Mahmoud_Abudakin@gamil.com');
    _phoneTextEditingController = TextEditingController(text: '+972 59-404-4445');
    _passwordTextEditingController = TextEditingController(text: '123456');
    _NnameaccounteditingController =
        TextEditingController(text: 'Mahmoud Abudakin');
  }

  @override
  void dispose() {
    _emailTextEditingController.dispose();
    _phoneTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    _NnameaccounteditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#019BE1'),
        elevation: 5,
        title: Text(
          S.of(context).Art16_accSet,
          style: TextStyle(
              fontFamily: 'Ooredo',
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: HexColor('#FFFFFF')),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          String languageCode = Localizations.localeOf(context).languageCode == 'en' ? 'ar' : 'en';
          MyApp.changeLocale(context, Locale(languageCode));
        },
        child: Icon(Icons.language),
      ),

      backgroundColor: HexColor('#ffffff'),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig().scaleWidth(12.5),
                vertical: SizeConfig().scaleWidth(10)),
            child: Column(children: [
              row_artboard18(
                  title: S.of(context).Art17_userName,
                  textEditingController: _NnameaccounteditingController,
                  obscureText: false,
              ),
              SizedBox(height: SizeConfig().scaleHeight(10)),
              row_artboard18(
                  title: S.of(context).Art5_Email,
                  textEditingController: _emailTextEditingController,
                  obscureText: false,
              ),
              SizedBox(height: SizeConfig().scaleHeight(10)),
              row_artboard18(
                  title: S.of(context).Art5_mobileNumber,
                  textEditingController: _phoneTextEditingController,
                  obscureText: false,
              ),
              SizedBox(height: SizeConfig().scaleHeight(10)),
              row_artboard18(
                  title: S.of(context).Art5_Password,
                  textEditingController: _passwordTextEditingController,
                  obscureText: true),
              SizedBox(height: SizeConfig().scaleHeight(10)),
              radioListTile_artboard17(
                  title: S.of(context).Art18_language,
                  subtitle1: S.of(context).Art18_languageAr,
                  subtitle2: S.of(context).Art18_languageEn),
            ])),
      ),
    );
  }
}

class row_artboard18 extends StatelessWidget {
  final String title;
  final TextEditingController textEditingController;
  final bool obscureText;
  row_artboard18(
      {required this.title,
        required this.obscureText,
        required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        textStore(
            text: title,
            fontsize: 14,
            fontfamily: 'Ooredo',
            fontWeight: FontWeight.w900,
            hexcolor: '#5F5F5F'),
      ]),
      TextField(
        obscureText: obscureText,
        obscuringCharacter: '*',
        controller: textEditingController,
        keyboardType: TextInputType.text,
        style: TextStyle(
            color: HexColor('#5F5F5F'),
            fontSize: SizeConfig().scaleTextFont(13),
            fontWeight: FontWeight.w800,
            fontFamily: 'Ooredo'),
        cursorColor: Colors.black,
        enabled: true,
        decoration: InputDecoration(
            suffixIcon:
            Icon(Icons.edit_outlined, color: HexColor('#616161'), size: 25),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: HexColor('#C1C1C1'), width: 2)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: HexColor('#C1C1C1'), width: 2))),
      ),
    ]);
  }
}

class radioListTile_artboard17 extends StatefulWidget {
  final String title;
  final String subtitle1;
  final String subtitle2;
  radioListTile_artboard17(
      {required this.title, required this.subtitle1, required this.subtitle2});
  @override
  State<radioListTile_artboard17> createState() =>
      _radioListTile_artboard17State();
}

class _radioListTile_artboard17State extends State<radioListTile_artboard17> {
  String _initial = 'ar';
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      textStore(
          text: widget.title,
          fontsize: 14,
          fontfamily: 'Ooredo',
          fontWeight: FontWeight.w900,
          hexcolor: '#5F5F5F'),
      RadioListTile<String>(
          title: textStore(
              text: widget.subtitle1,
              fontsize: 14,
              fontfamily: 'Ooredo',
              fontWeight: FontWeight.w900,
              hexcolor: '#5F5F5F'),
          value: 'ar',
          groupValue:  Localizations.localeOf(context).languageCode ,
          onChanged: (String? Selected) {
            if (Selected != null) {
              setState(() {
                String languageCode = 'ar';
                MyApp.changeLocale(context, Locale(languageCode));
                _initial = languageCode;
              });
            }
          }),
      RadioListTile<String>(
          title: textStore(
              text: widget.subtitle2,
              fontsize: 14,
              fontfamily: 'Ooredo',
              fontWeight: FontWeight.w900,
              hexcolor: '#5F5F5F'),
          value: 'en',
          groupValue:  Localizations.localeOf(context).languageCode ,
          onChanged: (String? Selected) {
            if (Selected != null) {
              setState(() {
                String languageCode = 'en';
                MyApp.changeLocale(context, Locale(languageCode));
                _initial = languageCode;
                // _initial = languageCode;
              });
            }
          }),
    ]);
  }
}
