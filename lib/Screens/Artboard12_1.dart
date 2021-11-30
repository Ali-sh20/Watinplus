import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/generated/l10n.dart';
import 'package:watinplus/widgets/Card_Notifications.dart';
import 'package:watinplus/widgets/drvier_homeScreen.dart';
import 'package:watinplus/widgets/textStore.dart';

import '../size_config.dart';

class Artboard12_1 extends StatefulWidget {
  const Artboard12_1({Key? key}) : super(key: key);

  @override
  _Artboard12_1State createState() => _Artboard12_1State();
}

class _Artboard12_1State extends State<Artboard12_1> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.zero,
        child: Column(children: [
          Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.all(10),
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.all(8),
                        child: Card_Notifications(
                            text1: S.of(context).Art12_1_titlecard,
                            fontsize1: 16,
                            fontWeight1: FontWeight.bold,
                            hexcolor1: '#272A3F',
                            text3: S.of(context).Art12_1_subtitlecard,
                            fontsize3: 14,
                            fontWeight3: FontWeight.w400,
                            hexcolor3: '#6E7989'));
                  })),
          Spacer(),
          drvier_homeScreen()
        ]),
      ),
    );
  }
}
