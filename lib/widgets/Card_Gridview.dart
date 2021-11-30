import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/size_config.dart';
import 'package:watinplus/widgets/textStore.dart';

class Card_Gridview extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  Card_Gridview({
    required this.subtitle,
    required this.title,
    required this.image,
  });
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: () {
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        color: HexColor('#ffffff'),
        elevation: 5,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Image.asset(
                image,
              ),
            ),
            Expanded(
              flex: 1,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(0),
                color: HexColor('#019BE1'),
                child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding:  EdgeInsets.all(5),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 1),
                          textStore(
                              text: title,
                              fontsize: 10,
                              fontfamily: 'Ooredo',
                              fontWeight: FontWeight.w800,
                              hexcolor: '#FFFFFF'),
                         SizedBox(height: SizeConfig().scaleHeight(9)),
                          textStore(
                            textAlign: TextAlign.center,
                              text: subtitle,
                              fontsize: 5.4,
                              fontfamily: 'Ooredo',
                              fontWeight: FontWeight.w600,
                              hexcolor: '#FFFFFF'),
                        ]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
