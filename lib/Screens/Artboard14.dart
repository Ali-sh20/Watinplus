import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/generated/l10n.dart';
import 'package:watinplus/storage/app_prefereces.dart';
import 'package:watinplus/widgets/textStore.dart';

import '../size_config.dart';

class Artboard14 extends StatefulWidget {
  const Artboard14({Key? key}) : super(key: key);

  @override
  _Artboard14State createState() => _Artboard14State();
}

class _Artboard14State extends State<Artboard14> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: HexColor('#ffffff'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig().scaleWidth(12.5),
              vertical: SizeConfig().scaleHeight(10)),
          child: Column(children: [
            Stack(children: [
              Card(
                clipBehavior: Clip.antiAlias,
                color: HexColor('#019BE1'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(12),
                )),
                margin: EdgeInsets.zero,
                elevation: 5,
                child: SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Image.network(
                      // ImagesGetxController.to.images.last.getDownloadURL()
                      AppPreferences().changeCover, fit: BoxFit.cover,
                      width: double.infinity,
                    )
                    ),
              ),

              // Card(
              //   color: HexColor('#019BE1'),
              //   shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.all(
              //     Radius.circular(SizeConfig().scaleHeight(12)),
              //   )),
              //   margin: EdgeInsets.zero,
              //   elevation: 15,
              //   child: Container(
              //     height: SizeConfig().scaleHeight(75),
              //     child: Image.asset(
              //       'images/Image 1.png',
              //       fit: BoxFit.cover,
              //       width: double.infinity,
              //     ),
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.only(
                    right: SizeConfig().scaleWidth(20),
                    top: SizeConfig().scaleHeight(55)),
                child: Row(children: [
                  Card(
                    clipBehavior: Clip.antiAlias,
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45),
                    ),
                    child: CircleAvatar(
                      radius: 45,
                      child: Stack(
                        children: [
                          Image.network(
                            // ImagesGetxController.to.images.last.getDownloadURL()
                            AppPreferences().changeProfile, fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                          Center(
                            child: IconButton(
                                onPressed: () => Navigator.pushNamed(
                                    context, '/upload_image_screen'),
                                icon: Icon(Icons.camera_alt,
                                    color: Colors.white38)),
                          )
                        ],
                      ),
                    ),
                  ),

                  // Card(
                  //   clipBehavior: Clip.antiAlias,
                  //   color: Colors.black,
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(45),
                  //
                  //   ),
                  //   child: CircleAvatar(
                  //       radius: SizeConfig().scaleHeight(45),
                  //       backgroundColor: HexColor('#ffffff'),
                  //       child:
                  //       Image.network(
                  //         // ImagesGetxController.to.images.last.getDownloadURL()
                  //         AppPreferences().changeProfile
                  //         ,fit: BoxFit.cover,width: double.infinity,)
                  //     // Image.asset(
                  //     //     AppPreferences().changeProfile
                  //     //     // 'images/Untitled-1.png'
                  //     // ),
                  //   ),
                  // ),

                  // CircleAvatar(
                  //   radius: SizeConfig().scaleHeight(35),
                  //   backgroundColor: HexColor('#ffffff'),
                  //   child: Image.asset('images/Untitled-1.png'),
                  // ),
                  SizedBox(
                    width: SizeConfig().scaleWidth(8),
                  ),
                  Column(
                    children: [
                      SizedBox(height: 30),
                      textStore(
                          text: S.of(context).drawer_name,
                          fontsize: Localizations.localeOf(context).languageCode=='ar'?14: 10,
                          fontfamily: 'Ooredo',
                          fontWeight: FontWeight.w900,
                          hexcolor: '#5F5F5F'),
                      SizedBox(height: SizeConfig().scaleHeight(3)),
                      textStore(
                          text: '${S.of(context).drawer_country}' +
                              ' - ' +
                              '${S.of(context).drawer_city}',
                          fontsize: 10,
                          fontfamily: 'Ooredo',
                          fontWeight: FontWeight.w400,
                          hexcolor: '#5F5F5F'),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      SizedBox(height: SizeConfig().scaleHeight(30)),
                      textStore(
                          text: S.of(context).Art14_dateOfRegistration,
                          fontsize: 10,
                          fontfamily: 'Ooredo',
                          fontWeight: FontWeight.w900,
                          hexcolor: '#5F5F5F'),
                      SizedBox(height: SizeConfig().scaleHeight(3)),
                      textStore(
                          text: S.of(context).Art14_date,
                          fontsize: 10,
                          fontfamily: 'Ooredo',
                          fontWeight: FontWeight.w400,
                          hexcolor: '#5F5F5F'),
                    ],
                  ),
                ]),
              ),
            ]),
            SizedBox(height: SizeConfig().scaleHeight(30)),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: SizeConfig().scaleWidth(10)),
              child: Card(
                  color: HexColor('#FAFAFA'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  )),
                  margin: EdgeInsets.zero,
                  elevation: 10,
                  child: Padding(
                    padding: EdgeInsets.all(SizeConfig().scaleHeight(6)),
                    child: Column(
                      children: [
                        textStore(
                            text: S.of(context).Art14_addDep,
                            fontsize: 14,
                            fontfamily: 'Ooredo',
                            fontWeight: FontWeight.w900,
                            hexcolor: '#5F5F5F'),
                        Padding(
                            padding: EdgeInsets.only(
                              top: SizeConfig().scaleHeight(5),
                              right: SizeConfig().scaleWidth(4),
                            ),
                            child:
                            Table(
                              defaultColumnWidth: FixedColumnWidth(SizeConfig().scaleWidth(75.0)),
                              children: [
                                TableRow(
                                    children: [

                                  Column(children:[Text(S.of(context).Art14_nameDep , style: TextStyle(fontSize: SizeConfig().scaleTextFont(10),fontFamily: 'Ooredo', fontWeight: FontWeight.w900, color: HexColor('#5F5F5F')))]),
                                  Column(children:[Text(S.of(context).Art14_numPlane, style: TextStyle(fontSize:SizeConfig().scaleTextFont(10),fontFamily: 'Ooredo', fontWeight: FontWeight.w900, color: HexColor('#5F5F5F')))]),
                                  Column(children:[Text(S.of(context).Art14_numTask , style: TextStyle(fontSize: SizeConfig().scaleTextFont(10),fontFamily: 'Ooredo', fontWeight: FontWeight.w900, color: HexColor('#5F5F5F')))]),
                                  Column(children:[Text(S.of(context).Art14_amount  , style: TextStyle(fontSize: SizeConfig().scaleTextFont(10),fontFamily: 'Ooredo', fontWeight: FontWeight.w900, color: HexColor('#5F5F5F')))]),
                                ]),
                                tableRow(department: S.of(context).Art4_design         , plan: 5, task: 90, amount: 120),
                                tableRow(department: S.of(context).Art4_marketing      , plan: 2, task: 30, amount: 100),
                                tableRow(department: S.of(context).Art4_content        , plan: 4, task: 50, amount: 400),
                                tableRow(department: S.of(context).Art4_video         , plan: 4, task: 50, amount: 400),
                                tableRow(department: S.of(context).Art4_programing    , plan: 4, task: 50, amount: 400),
                                tableRow(department: S.of(context).Art4_administration  , plan: 4, task: 50, amount: 400),
                                tableRow(department: S.of(context).Art4_engineering   , plan: 4, task: 50, amount: 400),
                              ],
                            ),
                            ),
                      ],
                    ),
                  )),
            ),
            SizedBox(height: SizeConfig().scaleHeight(30)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                color: HexColor('#FAFAFA'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(4),
                )),
                margin: EdgeInsets.zero,
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig().scaleHeight(15),
                      horizontal: SizeConfig().scaleWidth(10)),
                  child: Column(
                    children: [
                      Row_gift(title: S.of(context).Art4_design    , rate: 10),
                      Row_gift(title: S.of(context).Art4_marketing , rate: 20),
                      Row_gift(title: S.of(context).Art4_content   , rate: 40),
                      Row_gift(title: S.of(context).Art4_video          , rate: 60),
                      Row_gift(title: S.of(context).Art4_programing       , rate: 80),
                      Row_gift(title: S.of(context).Art4_administration , rate: 90),
                      Row_gift(title: S.of(context).Art4_engineering      , rate: 100),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: SizeConfig().scaleHeight(30)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                color: HexColor('#FAFAFA'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    )),
                margin: EdgeInsets.zero,
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig().scaleHeight(10)),
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            textStore(
                                text: S.of(context).Art14_monthlyPlanFlowChart,
                                fontsize: 12,
                                fontfamily: 'Ooredo',
                                fontWeight: FontWeight.w900,
                                hexcolor: '#5F5F5F'),
                          ]),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: SizeConfig().scaleHeight(15), horizontal: SizeConfig().scaleWidth(30)),
                        child: Row(children: [
                          Column(
                            children: [
                              CircleAvatar(
                                  backgroundColor: HexColor('#009BE0'),
                                  radius: 10),
                              SizedBox(height: SizeConfig().scaleHeight(7)),
                              CircleAvatar(
                                  backgroundColor: HexColor('#FFCF7B'),
                                  radius: 10),
                              SizedBox(height: SizeConfig().scaleHeight(7)),
                              CircleAvatar(
                                  backgroundColor: HexColor('#E83880'),
                                  radius: 10),
                            ],
                          ),
                          Spacer(flex: 2),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                textStore(
                                    text: S.of(context).Art14_PendingTasks,
                                    fontsize: 12,
                                    fontfamily: 'Ooredo',
                                    fontWeight: FontWeight.w900,
                                    hexcolor: '#5F5F5F'),
                                SizedBox(height: SizeConfig().scaleHeight(7)),
                                textStore(
                                    text: S.of(context).Art14_TasksInProgress,
                                    fontsize: 12,
                                    fontfamily: 'Ooredo',
                                    fontWeight: FontWeight.w900,
                                    hexcolor: '#5F5F5F'),
                                SizedBox(height: SizeConfig().scaleHeight(7)),
                                textStore(
                                    text: S.of(context).Art14_TasksUnderReview,
                                    fontsize: 12,
                                    fontfamily: 'Ooredo',
                                    fontWeight: FontWeight.w900,
                                    hexcolor: '#5F5F5F'),
                              ]),
                          Spacer(flex: 2),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                textStore(
                                    text: '100%',
                                    fontsize: SizeConfig().scaleTextFont(12),
                                    fontfamily: 'Ooredo',
                                    fontWeight: FontWeight.w900,
                                    hexcolor: '#009BE0'),
                                SizedBox(height: SizeConfig().scaleHeight(7)),
                                textStore(
                                    text: '20%',
                                    fontsize: SizeConfig().scaleTextFont(12),
                                    fontfamily: 'Ooredo',
                                    fontWeight: FontWeight.w900,
                                    hexcolor: '#FFCF7B'),
                                SizedBox(height: SizeConfig().scaleHeight(7)),
                                textStore(
                                    text: '50%',
                                    fontsize: SizeConfig().scaleTextFont(12),
                                    fontfamily: 'Ooredo',
                                    fontWeight: FontWeight.w900,
                                    hexcolor: '#E83880'),
                              ]),
                          Spacer(flex: 2),
                        ]),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: SizeConfig().scaleHeight(30)),
            Padding(
              padding:
              EdgeInsets.symmetric(horizontal: SizeConfig().scaleWidth(10)),
              child: Card(
                  color: HexColor('#FAFAFA'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      )),
                  margin: EdgeInsets.zero,
                  elevation: 10,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: SizeConfig().scaleHeight(20),horizontal: SizeConfig().scaleWidth(10) ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        workflow(
                          image: 'images/خطط.png',
                          title: S.of(context).Art14_CompletedPlans2,
                          amount: 4,
                          image2: 'images/مهام.png',
                          title2: S.of(context).Art14_TasksInProgress,
                          amount2: 4,
                        ),
                        workflow(
                          image: 'images/crown2.png',
                          title: S.of(context).Art14_TasksUnderReview,
                          amount: 100,
                          image2: 'images/crown.png',
                          title2: S.of(context).Art14_PendingTasks,
                          amount2: 100,

                        ),
                      ],
                    ),
                  )),
            ),
            SizedBox(height: SizeConfig().scaleHeight(30)),
          ]),
        ),
      ),
    );
  }
}
class workflow extends StatelessWidget {
  final String image;
  final String title;
  final int amount;
  final String image2;
  final String title2;
  final int amount2;
  const workflow({
    required this.image,
    required this.title,
    required this.amount,
    required this.image2,
    required this.title2,
    required this.amount2,

  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        row14(image: image, title: title, amount: amount),
        SizedBox(height: SizeConfig().scaleHeight(20)),
        row14(image: image2, title: title2, amount: amount2),
        SizedBox(height: SizeConfig().scaleHeight(20)),
      ],
    );
  }
}

Row row14({
  required String image,
  required String title,
  required int amount,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Image.asset(image),
      SizedBox(width: SizeConfig().scaleWidth(10)),
      textStore(
          text: '$title \n $amount',
          fontsize: 12,
          fontfamily: 'Ooredo',
          fontWeight: FontWeight.w900,
          hexcolor: '#5F5F5F'),
    ],
  );
}

class Row_gift extends StatelessWidget {
  final String title;
  final double rate;

  Row_gift({required this.title, required this.rate});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
     textStore(
         text: title,
         fontsize:8,
         fontfamily: 'Ooredo',
         fontWeight: FontWeight.w800,
         hexcolor: '#5F5F5F'),
      Spacer(),
      Card(
        elevation: 0,
        margin: EdgeInsets.all(0),
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(Localizations.localeOf(context).languageCode=='en'?12:0),
              topLeft:    Radius.circular(Localizations.localeOf(context).languageCode=='en'?12:0),

              bottomRight: Radius.circular(Localizations.localeOf(context).languageCode=='ar'?20:0),
              topRight: Radius.circular(Localizations.localeOf(context).languageCode=='ar'?20:0),

            )),
        child: Container(
            height: SizeConfig().scaleHeight(18),
            width: SizeConfig().scaleWidth(18),
            color: rate >= 10 ? HexColor('#009BE0') : HexColor('#FAFAFA')),
      ),
      Container(
          height: SizeConfig().scaleHeight(18),
          width: SizeConfig().scaleWidth(2.5),
          color: HexColor('#D0D0CF')),
      Container(
          height: SizeConfig().scaleHeight(18),
          width: SizeConfig().scaleWidth(18),
          color: rate >= 20 ? HexColor('#009BE0') : HexColor('#FAFAFA')),
      Container(
          height: SizeConfig().scaleHeight(18),
          width: SizeConfig().scaleWidth(2.5),
          color: HexColor('#D0D0CF')),
      Container(
          height: SizeConfig().scaleHeight(18),
          width: SizeConfig().scaleWidth(18),
          color: rate >= 30 ? HexColor('#009BE0') : HexColor('#FAFAFA')),
      Container(
          height: SizeConfig().scaleHeight(18),
          width: SizeConfig().scaleWidth(2.5),
          color: HexColor('#D0D0CF')),
      Container(
          height: SizeConfig().scaleHeight(18),
          width: SizeConfig().scaleWidth(20),
          color: rate >= 40 ? HexColor('#009BE0') : HexColor('#FAFAFA')),
      Container(
          height: SizeConfig().scaleHeight(18),
          width: SizeConfig().scaleWidth(2.5),
          color: HexColor('#D0D0CF')),
      Container(
          height: SizeConfig().scaleHeight(18),
          width: SizeConfig().scaleWidth(20),
          color: rate >= 50 ? HexColor('#009BE0') : HexColor('#FAFAFA')),
      Container(
          height: SizeConfig().scaleHeight(18),
          width: SizeConfig().scaleWidth(2.5),
          color: HexColor('#999A9A')),
      Container(
          height: SizeConfig().scaleHeight(18),
          width: SizeConfig().scaleWidth(18),
          color: rate >= 60 ? HexColor('#009BE0') : HexColor('#FAFAFA')),
      Container(
          height: SizeConfig().scaleHeight(18),
          width: SizeConfig().scaleWidth(2.5),
          color: HexColor('#D0D0CF')),
      Container(
          height: SizeConfig().scaleHeight(18),
          width: SizeConfig().scaleWidth(20),
          color: rate >= 70 ? HexColor('#009BE0') : HexColor('#FAFAFA')),
      Container(
          height: SizeConfig().scaleHeight(18),
          width: SizeConfig().scaleWidth(2.5),
          color: HexColor('#D0D0CF')),
      Container(
          height: SizeConfig().scaleHeight(18),
          width: SizeConfig().scaleWidth(18),
          color: rate >= 80 ? HexColor('#009BE0') : HexColor('#FAFAFA')),
      Container(
          height: SizeConfig().scaleHeight(18),
          width: SizeConfig().scaleWidth(2.5),
          color: HexColor('#D0D0CF')),
      Container(
          height: SizeConfig().scaleHeight(18),
          width: SizeConfig().scaleWidth(18),
          color: rate >= 90 ? HexColor('#009BE0') : HexColor('#FAFAFA')),
      Container(
          height: SizeConfig().scaleHeight(18),
          width: SizeConfig().scaleWidth(2.5),
          color: HexColor('#F8B657')),
      Card(
          elevation: 0,
          margin: EdgeInsets.all(0),
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(

            bottomLeft: Radius.circular(Localizations.localeOf(context).languageCode=='ar'?12:0),
            topLeft:    Radius.circular(Localizations.localeOf(context).languageCode=='ar'?12:0),

            bottomRight: Radius.circular(Localizations.localeOf(context).languageCode=='en'?20:0),
            topRight: Radius.circular(Localizations.localeOf(context).languageCode=='en'?20:0),

              )),
          child: Container(
              height: SizeConfig().scaleHeight(18),
              width: SizeConfig().scaleWidth(18),
              color: rate >= 100 ? HexColor('#009BE0') : HexColor('#FAFAFA'))),
      SizedBox(width: SizeConfig().scaleWidth(5)),
      Icon(Icons.card_giftcard_outlined,
          color: rate == 100
              ? HexColor('#FFBB00')
              : rate > 50 && rate <= 90
                  ? HexColor('#616161')
                  : HexColor('#C9C9C9'))
    ]);
  }
}

TableRow tableRow({
  required String department,
  required int plan,
  required int task,
  required double amount,
  double ver_pad=5,
}) {
  return TableRow(children: [
    Padding(
      padding:  EdgeInsets.symmetric(vertical: ver_pad),
      child: Column(
        children: [
          Text(department,
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: SizeConfig().scaleTextFont(8),
                  fontFamily: 'Ooredo',
                  fontWeight: FontWeight.w900,
                  color: HexColor('#5F5F5F'))),
        ],
      ),
    ),
    Padding(
      padding:  EdgeInsets.symmetric(vertical: ver_pad),
      child:Column(
        children: [
          Text('$plan',
              style: TextStyle(
                  fontSize: 12.0,
                  fontFamily: 'Ooredo',
                  fontWeight: FontWeight.w900,
                  color: HexColor('#5F5F5F'))),
        ],
      )
    ),
    Padding(
      padding:  EdgeInsets.symmetric(vertical: ver_pad),
      child: Column(
        children: [
          Text('$task',
              style: TextStyle(
                  fontSize: 12.0,
                  fontFamily: 'Ooredo',
                  fontWeight: FontWeight.w900,
                  color: HexColor('#5F5F5F'))),
        ],
      )
    ),
    Padding(
      padding:  EdgeInsets.symmetric(vertical: ver_pad),
      child:   Column(
        children: [
          Text('$amount\$',
              style: TextStyle(
                  fontSize: 12.0,
                  fontFamily: 'Ooredo',
                  fontWeight: FontWeight.w900,
                  color: HexColor('#5F5F5F'))),
        ],
      )
    ),


  ]);
}
