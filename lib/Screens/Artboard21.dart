import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/generated/l10n.dart';
import 'package:watinplus/storage/app_prefereces.dart';
import 'package:watinplus/widgets/textStore.dart';

import '../size_config.dart';

class Artboard21 extends StatefulWidget {
  @override
  _Artboard21State createState() => _Artboard21State();
}

class _Artboard21State extends State<Artboard21> {
  late CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    // AssetImage('images/1631100675_7976.png'),
    // AssetImage('images/1631100930_9938.png'),
    // AssetImage('1631101431_5981-removebg-preview.png'),
    // AssetImage('images/1632555526_9078.png'),
    AssetImage('https://up4net.com/uploads4/up4net.com163403294238851.png'),
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#019BE1'),
        elevation: 5,
        title: Text(
          S.of(context).drawer_SuccessPartners,
          style: TextStyle(
              fontFamily: 'Ooredo',
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: HexColor('#FFFFFF')),
        ),
      ),
      backgroundColor: HexColor('#ffffff'),
      body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig().scaleWidth(12.5),
                  vertical: SizeConfig().scaleWidth(10)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: SizeConfig().scaleHeight(70),
                            right: Localizations.localeOf(context).languageCode=='ar'?SizeConfig().scaleWidth(10):0,
                            left: Localizations.localeOf(context).languageCode=='en'?SizeConfig().scaleWidth(10):0

                        ),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 30,
                          color: HexColor('#019BE1'),
                        ),
                      ),
                      PrefetchImageDemo(),
                      Padding(
                        padding: EdgeInsets.only(
                            top: SizeConfig().scaleHeight(70),
                            right: Localizations.localeOf(context).languageCode=='ar'?SizeConfig().scaleWidth(300):0,
                            left: Localizations.localeOf(context).languageCode=='en'?SizeConfig().scaleWidth(300):0

                        ),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 30,
                          color: HexColor('#019BE1'),
                        ),
                      ),
                    ]),
                    SizedBox(height: SizeConfig().scaleHeight(20)),
                    textStore(
                        text: S.of(context).Art21_customerReviews,
                        fontsize: SizeConfig().scaleTextFont(26),
                        fontfamily: 'Ooredo',
                        fontWeight: FontWeight.w800,
                        hexcolor: '#5F5F5F'),
                    Divider(
                        thickness: 2,
                        color: HexColor('#019BE1'),
                        indent: SizeConfig().scaleWidth(113),
                        endIndent: SizeConfig().scaleWidth(113)),
                    textStore(
                        text: S.of(context).Art21_Trusted,
                        fontsize: SizeConfig().scaleTextFont(14),
                        fontfamily: 'Ooredo',
                        fontWeight: FontWeight.w800,
                        hexcolor: '#5F5F5F'),
                    SizedBox(height: SizeConfig().scaleHeight(35)),
                    SizedBox(
                      height: SizeConfig().scaleHeight(200),
                      child: GridView(
                        scrollDirection: Axis.horizontal,
                        gridDelegate:
                            SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                mainAxisSpacing: SizeConfig().scaleWidth(8),

                                mainAxisExtent:
                                    SizeConfig().scaleWidth(300)),
                        children: [
                          Card_Artboard21(
                              image: 'images/Untitled-1.png',
                              name: S.of(context).drawer_name,
                              city: '${S.of(context).drawer_city} - ${S.of(context).drawer_country}',
                              text:
                              S.of(context).Art21_review,
                              rate: 5),
                          Card_Artboard21(
                              image: 'images/Untitled-1.png',
                              name: S.of(context).drawer_name,
                              city: '${S.of(context).drawer_city} - ${S.of(context).drawer_country}',
                              text:
                              S.of(context).Art21_review,
                              rate: 5),
                          Card_Artboard21(
                              image: 'images/Untitled-1.png',
                              name: S.of(context).drawer_name,
                              city: '${S.of(context).drawer_city} - ${S.of(context).drawer_country}',
                              text:
                              S.of(context).Art21_review,
                              rate: 5),
                          Card_Artboard21(
                              image: 'images/Untitled-1.png',
                              name: S.of(context).drawer_name,
                              city: '${S.of(context).drawer_city} - ${S.of(context).drawer_country}',
                              text:
                              S.of(context).Art21_review,
                              rate: 5),

                        ],
                      ),
                    ),

                    SizedBox(height: SizeConfig().scaleHeight(20)),

                  ]))),
    );
  }
}
class Card_Artboard21 extends StatelessWidget {
  final String image;
  final String name;
  final String city;
  final int rate;
  final String text;

  Card_Artboard21(
      {required this.image,
        required this.name,
        required this.city,
        required this.text,
        required this.rate});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      color: HexColor('#FFFFFF'),
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: BorderSide(width: .5, color: HexColor('#707070'))),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig().scaleWidth(8),
            vertical: SizeConfig().scaleHeight(10)),
        child: Column(
          children: [
            CircleAvatar(
              child: Image.asset(image),
              radius: 20,
            ),
            SizedBox(height: SizeConfig().scaleHeight(5)),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  textStore(
                      text: name,
                      fontsize: SizeConfig().scaleTextFont(15),
                      fontfamily: 'Ooredo',
                      fontWeight: FontWeight.w800,
                      hexcolor: '#5F5F5F'),
                  Icon(Icons.star, color: HexColor('#FFC107'), size: 20),
                  textStore(
                      text: '${rate}',
                      fontsize: SizeConfig().scaleTextFont(15),
                      fontfamily: 'Ooredo',
                      fontWeight: FontWeight.w800,
                      hexcolor: '#5F5F5F'),
                ]),
            textStore(
                text: city,
                fontsize: SizeConfig().scaleTextFont(10),
                fontfamily: 'Ooredo',
                fontWeight: FontWeight.w800,
                hexcolor: '#5F5F5F'),
            SizedBox(height: SizeConfig().scaleHeight(15)),
            textStore(
                textAlign: TextAlign.start,
                text: text,
                fontsize: SizeConfig().scaleTextFont(9),
                fontfamily: 'Ooredo',
                fontWeight: FontWeight.w800,
                hexcolor: '#5F5F5F')
          ],
        ),
      ),
    );
  }
}

class PrefetchImageDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PrefetchImageDemoState();
  }
}

class _PrefetchImageDemoState extends State<PrefetchImageDemo> {
  final List<String> images = [
     'https://d.top4top.io/p_21024p4of4.png',
     'https://a.top4top.io/p_2102fjerz2.png',
     'https://c.top4top.io/p_2102uh8f63.png',
     'https://d.top4top.io/p_21024p4of4.png',
     'https://up4net.com/uploads4/up4net.com163403550781171.png',
  ];

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      images.forEach((imageUrl) {
        precacheImage(NetworkImage(imageUrl), context);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider.builder(
        itemCount: images.length,
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
        itemBuilder: (context, index, realIdx) {
          return Container(
            child: Center(
                child: Image.network(images[index],
                    fit: BoxFit.cover, width: 1000)),
          );
        },
      ),
    );
  }
}
