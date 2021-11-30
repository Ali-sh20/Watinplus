import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'TextStore.dart';


class Card_Notifications extends StatelessWidget {

  final String text1;
  final double fontsize1;
  final FontWeight fontWeight1;
  final String hexcolor1;
  final String text3;
  final double fontsize3;
  final FontWeight fontWeight3;
  final String hexcolor3;

  Card_Notifications({
    required this.text1,
    required this.fontsize1,
    required this.fontWeight1,
    required this.hexcolor1,
    required this.text3,
    required this.fontsize3,
    required this.fontWeight3,
    required this.hexcolor3,
  }
      );
  @override
  Widget build(BuildContext context) {
    return Card(
        color: HexColor('#FAFAFA'),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4))),
        margin: EdgeInsets.zero,
        elevation: 5,
        child: Container(
            height: 95,
            width: double.infinity,
            child: Padding(
                padding:
                const EdgeInsets.only(top: 12, left: 16, right: 16),
                child: Row(
                  children: [
                    Column(
                        children: [
                      SizedBox(height: 4),
                      CircleAvatar(
                        backgroundColor: HexColor('#019BE1'),
                        radius: 20,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.notifications_outlined),
                          color: HexColor('#ffffff'),
                        ),
                      ),
                    ]),
                    SizedBox(width: 16.1),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Row(
                        children: [
                          textStore(
                              text: text1,
                              fontsize: 16,
                              fontfamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              hexcolor: '#272A3F'),
                        ],
                      ),
                      SizedBox(height:11),
                      Row(
                        children: [
                          textStore(
                              text: text3,
                              fontsize: 14,
                              fontfamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              hexcolor: '#6E7989'),
                        ],
                      ),

                    ]),
                  ],
                ))));
  }
}
