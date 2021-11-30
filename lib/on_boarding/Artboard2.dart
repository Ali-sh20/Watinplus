import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/generated/l10n.dart';
import 'package:watinplus/size_config.dart';
import 'package:watinplus/widgets/textStore.dart';

class Artboard2 extends StatefulWidget {
  const Artboard2({Key? key}) : super(key: key);

  @override
  _Artboard2State createState() => _Artboard2State();
}


class _Artboard2State extends State<Artboard2> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ListView(
      children: [
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: textStore(
                  text: S.of(context).Art2_1,
                  fontfamily: 'Ooredo',
                  hexcolor: '#5F5F5F',
                  fontsize: 40,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: SizeConfig().scaleHeight(10)),
              Center(
                child: textStore(
                  text: S.of(context).Art2_2,
                  fontfamily: 'Ooredo',
                  hexcolor: '#5F5F5F',
                  fontsize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height:SizeConfig().scaleHeight(21)),
              textStore(
                text: S.of(context).Art2_3,
                fontfamily: 'Ooredo',
                hexcolor: '#5F5F5F',
                fontsize: 14.8,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height:SizeConfig().scaleHeight(21)),
              textStore(
                text: S.of(context).Art2_4,
                fontfamily: 'Ooredo',
                hexcolor: '#5F5F5F',
                fontsize: 16,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: SizeConfig().scaleHeight(30)),
              Center(child: Image.asset('images/1632570074_8890.png'))
            ],
          ),
      ],
    );

  }
}
