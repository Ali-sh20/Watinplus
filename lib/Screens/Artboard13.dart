import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/generated/l10n.dart';
import 'package:watinplus/widgets/drvier_homeScreen.dart';
import 'package:watinplus/widgets/textStore.dart';

import '../size_config.dart';

class Artboard13 extends StatefulWidget {
  const Artboard13({Key? key}) : super(key: key);

  @override
  _Artboard13State createState() => _Artboard13State();
}

class _Artboard13State extends State<Artboard13> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.zero,
        child: Column(children: [
          Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(10),
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.all(8),
                        child: Card_Artboard13(
                            amountProject: '500\$',
                            dateProject: '15/12/2001',
                            depProject: 'التصميم',
                            NameProject: 'تصميم بروفايل'));
                  })),
          Spacer(),
          drvier_homeScreen()
        ]),
      ),
    );
  }
}

class Artboard13_initial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/Group 1313.png'),
          SizedBox(height: SizeConfig().scaleHeight(30)),
          textStore(
              text: S.of(context).Art13_1,
              fontsize: 21,
              fontfamily: 'Ooredo',
              fontWeight: FontWeight.w800,
              hexcolor: '#5F5F5F'),
        ],
      ),
    );
  }
}

class Card_Artboard13 extends StatelessWidget {
  final String NameProject;
  final String depProject;
  final String amountProject;
  final String dateProject;

  Card_Artboard13({
    required this.amountProject,
    required this.dateProject,
    required this.depProject,
    required this.NameProject,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      color: HexColor('#ffffff'),
      elevation: 5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
          padding: EdgeInsets.all(10),
          child:

          Row(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textStore(
                    text: S.of(context).Art13_NameProject,
                    fontsize: 16,
                    fontfamily: 'Ooredo',
                    fontWeight: FontWeight.w800,
                    hexcolor: '#019BE1'),
                SizedBox(height: SizeConfig().scaleHeight(10)),
                textStore(
                    text: S.of(context).Art13_DepProject,
                    fontsize: 16,
                    fontfamily: 'Ooredo',
                    fontWeight: FontWeight.w800,
                    hexcolor: '#019BE1'),
                SizedBox(height: SizeConfig().scaleHeight(10)),
                textStore(
                    text: S.of(context).Art13_budgetProject,
                    fontsize: 16,
                    fontfamily: 'Ooredo',
                    fontWeight: FontWeight.w800,
                    hexcolor: '#019BE1'),
                SizedBox(height: SizeConfig().scaleHeight(10)),
                textStore(
                    text: S.of(context).Art13_DateProject,
                    fontsize: 16,
                    fontfamily: 'Ooredo',
                    fontWeight: FontWeight.w800,
                    hexcolor: '#019BE1'),
              ],
            ),
            SizedBox(width: SizeConfig().scaleWidth(10)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textStore(
                    text: NameProject,
                    fontsize: 16,
                    fontfamily: 'Ooredo',
                    fontWeight: FontWeight.w800,
                    hexcolor: '#9EA7C1'),
                SizedBox(height: SizeConfig().scaleHeight(10)),
                textStore(
                    text: depProject,
                    fontsize: 16,
                    fontfamily: 'Ooredo',
                    fontWeight: FontWeight.w800,
                    hexcolor: '#9EA7C1'),
                SizedBox(height: SizeConfig().scaleHeight(10)),
                textStore(
                    text: amountProject,
                    fontsize: 16,
                    fontfamily: 'Ooredo',
                    fontWeight: FontWeight.w800,
                    hexcolor: '#9EA7C1'),
                SizedBox(height: SizeConfig().scaleHeight(10)),
                textStore(
                    text: dateProject,
                    fontsize: 16,
                    fontfamily: 'Ooredo',
                    fontWeight: FontWeight.w800,
                    hexcolor: '#9EA7C1'),
              ],
            ),
          ])
      ),
    );
  }
}
