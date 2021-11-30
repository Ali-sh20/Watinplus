import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/generated/l10n.dart';
import 'package:watinplus/on_boarding/Artboard2.dart';
import 'package:watinplus/size_config.dart';
import 'Artboard3.dart';
import 'Artboard4.dart';
import 'On_Bording_Indicator.dart';

class onboardingScreen extends StatefulWidget {
  const onboardingScreen({Key? key}) : super(key: key);

  @override
  _on_boarding_ScreenState createState() => _on_boarding_ScreenState();
}

class _on_boarding_ScreenState extends State<onboardingScreen> {
  int _currentPage = 0;
  late PageController _pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal:  SizeConfig().scaleWidth(20)),
        child: Stack(
          children: [
            //page view
            Padding(
              padding:  EdgeInsets.only(top: SizeConfig().scaleHeight(60)),
              child: PageView(
                controller: _pageController,
                onPageChanged: (int currentPage) {
                  setState(() {
                    _currentPage = currentPage;
                  });
                },
                children: [
                  Artboard2(),
                  Artboard3(),
                  Artboard4(),
                ],
              ),
            ),
            Positioned(
              bottom: SizeConfig().scaleHeight(45),
              left: 0,
              right: 0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  //Indicator
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OnBoardingIndicator(
                          marginend: 14, isSlected: _currentPage == 0),
                      OnBoardingIndicator(
                          marginend: 14, isSlected: _currentPage == 1),
                      OnBoardingIndicator(isSlected: _currentPage == 2),
                    ],
                  ),
                ],
              ),
            ),
            //Skip
            Positioned(
              left: Localizations.localeOf(context).languageCode=='ar'?0:null,
              right: Localizations.localeOf(context).languageCode=='en'?0:null,
              top: SizeConfig().scaleHeight(40),
              child: Visibility(
                visible: _currentPage != 2,
                replacement: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Artboard5');
                  },
                  child: Text(
                    S.of(context).start,
                    style: TextStyle(
                        fontSize: 18,
                        color: HexColor('#36596A'),
                        fontFamily: 'Ooredo',
                        fontWeight: FontWeight.w400),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    _pageController.jumpToPage(2);
                  },
                  child: Text(
                    S.of(context).skip,
                    style: TextStyle(
                        fontSize: 18,
                        color: HexColor('#36596A'),
                        fontFamily: 'Ooredo',
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
