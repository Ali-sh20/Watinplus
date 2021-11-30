
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/generated/l10n.dart';
import 'package:watinplus/getx_controller/images_getx_controller.dart';
import 'package:watinplus/getx_controller/images_getx_controllerCover.dart';
import 'package:watinplus/storage/app_prefereces.dart';
import 'package:watinplus/utils/helpers.dart';
import 'package:watinplus/widgets/textStore.dart';
import '../main.dart';
import '../size_config.dart';
import 'package:get/get.dart';


class Artboard17 extends StatefulWidget {
  const Artboard17({Key? key}) : super(key: key);

  @override
  _Artboard17State createState() => _Artboard17State();
}

class _Artboard17State extends State<Artboard17> with Helpers{
  late TextEditingController _NnameaccounteditingController;
  late TextEditingController _NameTextEditingController;
  late TextEditingController _dateTextEditingController;
  late TextEditingController _CountryTextEditingController;
  late TextEditingController _CityTextEditingController;


  ImagesGetxController _imagesGetxController=Get.put(ImagesGetxController());
  ImagesGetxControllerCover _imagesGetxControllerCover=Get.put(ImagesGetxControllerCover());


  @override
  void initState() {
    super.initState();
    _NameTextEditingController =
        TextEditingController(text: 'Mahmoud Majid Abudakin');
    _dateTextEditingController =
        TextEditingController(text: 'مايو - 28 - 1994');
    _CountryTextEditingController = TextEditingController(text: 'فلسطين');
    _CityTextEditingController = TextEditingController(text: 'غزة');
    _NnameaccounteditingController =
        TextEditingController(text: 'Mahmoud Abudakin');

    //
    // setState(() {
    //   _path=ImagesGetxController().images.last.getDownloadURL() as String;
    //   AppPreferences().changeProfileImage(_path);
    // });
  }

  @override
  void dispose() {
    _NameTextEditingController.dispose();
    _dateTextEditingController.dispose();
    _CountryTextEditingController.dispose();
    _CityTextEditingController.dispose();
    _NnameaccounteditingController.dispose();
    super.dispose();
  }

  // void initState() {
  //   super.initState();
  //   _NameTextEditingController =
  //       TextEditingController(text: 'Mahmoud Majid Abudakin');
  //   _dateTextEditingController =
  //       TextEditingController(text: S.of(context).Art17_birthDate);
  //   _CountryTextEditingController = TextEditingController(text:  S.of(context).drawer_country);
  //   _CityTextEditingController = TextEditingController(text: S.of(context).drawer_city);
  //   _NnameaccounteditingController =
  //       TextEditingController(text: S.of(context).Art17_fullName);
  // }

late  String _path;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#019BE1'),
        elevation: 5,
        title: Text(
          S.of(context).Art17_personal,
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
            child: Column(children: [
              textStore(
                textAlign: TextAlign.center,
                  text: 'معلومات حسابك موثقة , إذا قمت بتعديلها ستحتاج إلى إعادة التوثيق مرة أخرى .',
                  fontsize: 14,
                  fontfamily: 'Ooredo',
                  fontWeight: FontWeight.w900,
                  hexcolor: '#5F5F5F'),
              SizedBox(height: SizeConfig().scaleHeight(10)),
              Stack(children: [
                Stack(
                  children: [
                    Card(
                      clipBehavior: Clip.antiAlias,
                      color: HexColor('#019BE1'),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      )),
                      margin: EdgeInsets.zero,
                      elevation: 15,
                      child:

                      SizedBox(
                        height: 100,
                        width: double.infinity,
                        child:
                        GetX<ImagesGetxControllerCover>(
                          builder:(ImagesGetxControllerCover controller) {
                            if(controller.imagesCover.isNotEmpty){
                              return FutureBuilder<String>(

                                future: controller.imagesCover.last.getDownloadURL(),
                                builder: (context, snapshot) {
                                  if(snapshot.connectionState==ConnectionState.waiting){
                                    return Center(child: CircularProgressIndicator(),);
                                  }
                                  else if(snapshot.hasData){
                                    AppPreferences().changeCoverImage(snapshot.data!);

                                    return   Image.network(snapshot.data!,fit: BoxFit.cover,width: double.infinity,);
                                  }else{
                                    return Icon(Icons.image,size: 20,);

                                  }
                                },
                              );
                            }else{
                              return    Icon(Icons.image_not_supported,size: 20,);

                            }

                          } ,),

                        // Image.asset(
                        //   'images/Image 1.png',
                        //   fit: BoxFit.cover,
                        //   width: double.infinity,
                        // ),
                      ),
                    ),
                    Center(
                      child: IconButton(
                          onPressed: ()  => Navigator.pushNamed(context, '/upload_image_screenCover'),
                          icon: Icon(Icons.camera_alt, color: Colors.white)),
                    ),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, top: 60),
                  child:


                  Row(
                      children: [
                        Card(
                          clipBehavior: Clip.antiAlias,
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35),

                          ),
                          child:CircleAvatar(
                            radius: 35,
                            child: Stack(
                              children: [
                                GetX<ImagesGetxController>(
                                  builder:(ImagesGetxController controller) {
                                    if(controller.images.isNotEmpty){
                                      return FutureBuilder<String>(

                                        future: controller.images.last.getDownloadURL(),

                                        builder: (context, snapshot) {

                                          if(snapshot.connectionState==ConnectionState.waiting){
                                            print('aaaaaaaaaaaa');
                                            return Center(child: CircularProgressIndicator(),);
                                      }
                                          else if(snapshot.hasData){
                                            print('mmmmmmmmmmm');
                                            AppPreferences().changeProfileImage(snapshot.data!);
                                            return   Image.network(
                                               snapshot.data!,fit: BoxFit.cover,width: double.infinity,);
                                          }else{
                                            return Icon(Icons.image,size: 20,);

                                          }
                                        },
                                      );
                                    }else{
                                      return    Icon(Icons.image_not_supported,size: 20,);

                                    }

                                  } ,),
                                Center(
                                  child: IconButton(
                                      onPressed: ()=> Navigator.pushNamed(context, '/upload_image_screen'),
                                      icon: Icon(Icons.camera_alt, color: Colors.white38)),
                                )
                              ],
                            ),
                          ),

                        ),
                    SizedBox(
                      width: SizeConfig().scaleWidth(8),
                    ),
                  ]),
                ),
              ]),
              row_artboard17(
                  title: S.of(context).Art17_userName,

                  icon: Icons.check_circle,
                  textEditingController: _NnameaccounteditingController),
              row_artboard17(
                  title:  S.of(context).Art17_fullNames,
                  textEditingController: _NameTextEditingController),
              SizedBox(height: SizeConfig().scaleHeight(10)),
              radioListTile_artboard17(
                  title: S.of(context).Art17_sex, subtitle1: S.of(context).Art17_sexF, subtitle2: S.of(context).Art17_sexM),
              Divider(
                  thickness: 2,
                  color: HexColor('#C1C1C1'),
                  indent: 0,
                  endIndent: 0),
              row_artboard17(
                  title: S.of(context).Art17_dateOfBirth,

                  textEditingController: _dateTextEditingController),
              row_artboard17(
                  title: S.of(context).Art17_city,

                  textEditingController: _CityTextEditingController),
              row_artboard17(
                  title: S.of(context).Art17_country,

                  textEditingController: _CountryTextEditingController),
              SizedBox(height: SizeConfig().scaleHeight(10)),
              radioListTile_artboard17(
                  title: S.of(context).Art17_aboutJob,
                  subtitle1: S.of(context).Art17_company,
                  subtitle2: S.of(context).Art17_individualWork),
            ])),
      ),
    );
  }
}

class row_artboard17 extends StatelessWidget {
  final String title;

  final IconData? icon;
  final TextEditingController textEditingController;

  row_artboard17(
      {required this.title,

      this.icon,
      required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        textStore(
            text: title,
            fontsize: 14,
            fontfamily: 'Ooredo',
            fontWeight: FontWeight.w900,
            hexcolor: '#5F5F5F'),
        IconButton(
            onPressed: () {}, icon: Icon(icon, color: HexColor('#019BE1')))
      ]),
      TextField(
        controller: textEditingController,
        keyboardType: TextInputType.text,
        style: TextStyle(
            color: HexColor('#5F5F5F'),
            fontSize: SizeConfig().scaleTextFont(13),
            fontWeight: FontWeight.w800,
            fontFamily: 'Ooredo'),
        cursorColor: Colors.black,
        enabled: true,
        decoration: InputDecoration(
            suffixIcon:
                Icon(Icons.edit_outlined, color: HexColor('#616161'), size: 25),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: HexColor('#C1C1C1'), width: 2)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: HexColor('#C1C1C1'), width: 2))),
      ),
    ]);
  }
  Future<void> deleteImage({required int index}) async{
    bool deleted=await ImagesGetxController.to.deleteImage(index: index);
    String message=deleted?'Image deleted Successfully':'Faild to delete image';
    // showSnackBar(context, message: message,error: !deleted);
  }

}

class radioListTile_artboard17 extends StatefulWidget {
  final String title;
  final String subtitle1;
  final String subtitle2;
  radioListTile_artboard17(
      {required this.title, required this.subtitle1, required this.subtitle2});
  @override
  State<radioListTile_artboard17> createState() =>
      _radioListTile_artboard17State();
}

class _radioListTile_artboard17State extends State<radioListTile_artboard17> {
  String _initial = 'F';
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      textStore(
          text: widget.title,
          fontsize: 14,
          fontfamily: 'Ooredo',
          fontWeight: FontWeight.w900,
          hexcolor: '#5F5F5F'),
      RadioListTile<String>(
          title: textStore(
              text: widget.subtitle1,
              fontsize: 14,
              fontfamily: 'Ooredo',
              fontWeight: FontWeight.w900,
              hexcolor: '#5F5F5F'),
          value: 'F',
          groupValue: _initial,
          onChanged: (String? Selected) {
            if (Selected != null) {
              setState(() {
                _initial = Selected;
              });
            }
          }),
      RadioListTile<String>(
          title: textStore(
              text: widget.subtitle2,
              fontsize: 14,
              fontfamily: 'Ooredo',
              fontWeight: FontWeight.w900,
              hexcolor: '#5F5F5F'),
          value: 'M',
          groupValue: _initial,
          onChanged: (String? Selected) {
            if (Selected != null) {
              setState(() {
                _initial = Selected;
              });
            }
          }),
    ]);
  }
}
