import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/generated/l10n.dart';
import 'package:watinplus/size_config.dart';
import 'package:watinplus/widgets/drvier_homeScreen.dart';
import 'package:watinplus/widgets/textStore.dart';

class Artboard8 extends StatefulWidget {
  const  Artboard8({Key? key}) : super(key: key);

  @override
  _Artboard8State createState() => _Artboard8State();
}

class _Artboard8State extends State<Artboard8> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        SizedBox(height: SizeConfig().scaleHeight(30)),
        textStore(
            text: S.of(context).Art8_departments,
            fontsize: 20,
            fontfamily: 'Ooredo',
            fontWeight: FontWeight.w600,
            hexcolor: '#5F5F5F'),
        SizedBox(height: SizeConfig().scaleHeight(20)),
        textStore(
            text: S.of(context).Art8_Browse,
            fontsize: 12,
            fontfamily: 'Ooredo',
            fontWeight: FontWeight.w600,
            hexcolor: '#5F5F5F'),
        SizedBox(height: 30),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
          child: GridView(
            scrollDirection: Axis.vertical,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 21,
                mainAxisSpacing: 15,
                mainAxisExtent: 120),
            children: [
              Card_Gridview(title: S.of(context).Art8_departmentsDesign,image: 'images/Group1299.png',path: '/Artboard22'),
              Card_Gridview(title: S.of(context).Art8_departmentsMarketing,image: 'images/bullhorn.png',path: '/Artboard23'),
              Card_Gridview(title: S.of(context).Art8_departmentsContent,image: 'images/content.png',path: '/Artboard24'),
              Card_Gridview(title: S.of(context).Art8_departmentsVideo,image: 'images/video.png',path: '/Artboard25'),
              Card_Gridview(title: S.of(context).Art8_departmentsProgramming,image: 'images/web-programming.png',path: '/Artboard26'),
              Card_Gridview(title: S.of(context).Art8_departmentsAdministration,image:  'images/network.png',path: '/Artboard28'),
              Card_Gridview(title: S.of(context).Art8_departmentsEngineering,image: 'images/model.png',path: '/Artboard29'),
            ],
          ),
        )),
        drvier_homeScreen()
      ],
    );
  }
}


class Card_Gridview extends StatelessWidget {

  final String path;
  final String title;
  final String image;

  Card_Gridview({
    required this.path,
    required this.title,
    required this.image,

});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: HexColor('#019BE1'),
      elevation: 5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, path);
        },
        child: Container(
          margin: EdgeInsets.zero,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(image),
              SizedBox(height: 10),
              textStore(
                  text: title,
                  fontsize: 16,
                  fontfamily: 'Ooredo',
                  fontWeight: FontWeight.w800,
                  hexcolor: '#FFFFFF'),

            ],
          ),
        ),
      ),
    );
  }
}
