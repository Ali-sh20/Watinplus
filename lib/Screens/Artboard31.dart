import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/generated/l10n.dart';
import 'package:watinplus/widgets/textStore.dart';

import '../size_config.dart';

class Artboard31 extends StatefulWidget {



  @override
  _Artboard31State createState() => _Artboard31State();
}

class _Artboard31State extends State<Artboard31> {
  late TextEditingController _ProblemController;
  late TextEditingController _ProblemTextController;


  String? _ProblemError;
  String? _ProblemTextError;

  @override
  void initState() {
    super.initState();
    _ProblemTextController = TextEditingController();
    _ProblemController = TextEditingController();
  }
  @override
  void dispose() {
    _ProblemTextController.dispose();
    _ProblemController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor('#019BE1'),
          elevation: 5,
          title: Text(
            S.of(context).Art30_helpPage2,
            style: TextStyle(
                fontFamily: 'Ooredo',
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: HexColor('#FFFFFF')),
          ),
        ),
        backgroundColor: HexColor('#ffffff'),
        body: Padding(
          padding: EdgeInsets.all(SizeConfig().scaleHeight(20)),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                textStore(
                    text: S.of(context).Art30_problemTitle,
                    fontsize: 13,
                    fontfamily: 'Ooredo',
                    fontWeight: FontWeight.w800,
                    hexcolor: '#616161'),
                SizedBox(height: SizeConfig().scaleHeight(10)),
                TextField(
                  controller : _ProblemController,
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                      color: HexColor('#272A3F'),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Ooredo'),
                  cursorColor: Colors.black,
                  enabled: true,
                  decoration: InputDecoration(
                    errorText: _ProblemError,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: HexColor('#D8DAE0'), width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: HexColor('#D8DAE0'),
                        )),
                    hintText: S.of(context).Art30_WriteProblemTitle,
                    hintStyle: TextStyle(
                        color: HexColor('#616161'),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Ooredo'),
                  ),
                ),
                SizedBox(height: SizeConfig().scaleHeight(10)),
                Card(
                  margin: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: HexColor('#D8DAE0'),width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: SizeConfig().scaleHeight(250),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(children: [
                        textStore(
                            text: S.of(context).Art30_ProblemDetails,
                            fontsize: 13,
                            fontfamily: 'Ooredo',
                            fontWeight: FontWeight.w800,
                            hexcolor: '#616161'),
                        SizedBox(height: SizeConfig().scaleHeight(10)),
                        TextField(
                          minLines: 5,
                          maxLines: 10,
                          controller: _ProblemTextController,
                          keyboardType: TextInputType.text,
                          style: TextStyle(
                              color: HexColor('#272A3F'),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Ooredo'),
                          cursorColor: Colors.black,
                          enabled: true,
                          decoration: InputDecoration(
                            errorText: _ProblemTextError,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: HexColor('#D8DAE0'), width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: HexColor('#D8DAE0'),
                                )),
                            hintText: S.of(context).Art30_writeProblem,
                            hintStyle: TextStyle(
                                color: HexColor('#616161'),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Ooredo'),
                          ),
                        ),
                        Spacer(),
                        textStore(
                            text: S.of(context).Art30_disclaimer,
                            fontsize: SizeConfig().scaleTextFont(6),
                            fontfamily: 'Ooredo',
                            fontWeight: FontWeight.w800,
                            hexcolor: 'FF0000'),
                      ]),
                    ),
                  ),
                ),
                SizedBox(height: SizeConfig().scaleHeight(20)),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: textStore(
                        text: S.of(context).Art30_sendRequest,
                        fontsize: 12,
                        fontfamily: 'Ooredo',
                        fontWeight: FontWeight.w600,
                        hexcolor: '#ffffff'),
                    style: ElevatedButton.styleFrom(
                        elevation: 4,
                        minimumSize: Size(100, 36),
                        primary: HexColor('#019BE1'),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(4))))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
