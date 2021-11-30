
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/size_config.dart';

class OnBoardingIndicator extends StatelessWidget {
  OnBoardingIndicator({ this.marginend=0,required this.isSlected});
  final double marginend;
  final bool isSlected;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsetsDirectional.only(end:  SizeConfig().scaleWidth(marginend)),
      width: isSlected ? SizeConfig().scaleWidth(50): SizeConfig().scaleWidth(26),
      height: 10,
      decoration: BoxDecoration(
          color: isSlected ?HexColor('#019BE1') :HexColor('#E4E4E4'),
          borderRadius: BorderRadius.circular( SizeConfig().scaleWidth(5))
      ),

    );

  }
}