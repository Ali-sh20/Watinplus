import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/generated/l10n.dart';
import 'package:watinplus/models/chat_model.dart';
import 'package:watinplus/models/contact_model.dart';
import 'package:watinplus/widgets/drvier_homeScreen.dart';


import '../size_config.dart';

class Artboard0012 extends StatefulWidget {
  @override
  _Artboard0012State createState() => _Artboard0012State();
}

class _Artboard0012State extends State<Artboard0012>
    with SingleTickerProviderStateMixin{
  // List<chatModel> list = chatModel.list;
  @override
  Widget build(BuildContext context) {
    List<chatModel> list = [
      chatModel(contact: ContactModel(name: S.of(context).Art4_design        )),
      chatModel(contact: ContactModel(name: S.of(context).Art4_marketing     )),
      chatModel(contact: ContactModel(name: S.of(context).Art4_content       )),
      chatModel(contact: ContactModel(name: S.of(context).Art4_video         )),
      chatModel(contact: ContactModel(name: S.of(context).Art4_programing    )),
      chatModel(contact: ContactModel(name: S.of(context).Art4_administration )),
      chatModel(contact: ContactModel(name: S.of(context).Art4_engineering   )),


    ];
    SizeConfig().init(context);
     return Scaffold(
      body: Column(children: [
        Expanded(
            child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: ListTile(
                        onTap: () {
                          Navigator.pushNamed(context, '/Chat_item_page');
                        },
                        leading: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(100)),
                              image: DecorationImage(image: ExactAssetImage('images/44.png'))
                          ),
                        ),
                        title: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                          Text(
                            list[index].contact.name,
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Ooredo',
                                fontWeight: FontWeight.w800,
                                color: HexColor('#5F5F5F')),
                          ),
                        ]),
                       ),
                  );
                })),
        drvier_homeScreen()

      ]),
    );

    // return Scaffold(
    //     body: Center(
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Image.asset('images/Group 1313.png'),
    //           SizedBox(height: SizeConfig().scaleHeight(30)),
    //           textStore(
    //               text: 'جميع الدعوات الواردة',
    //               fontsize: 21,
    //               fontfamily: 'Ooredo',
    //               fontWeight: FontWeight.w800,
    //               hexcolor: '#5F5F5F'),
    //           SizedBox(height: SizeConfig().scaleHeight(10)),
    //           textStore(
    //               text: 'ستجدها في هذا الملف',
    //               fontsize: 19,
    //               fontfamily: 'Ooredo',
    //               fontWeight: FontWeight.w400,
    //               hexcolor: '#5F5F5F'),
    //           SizedBox(height: SizeConfig().scaleHeight(70)),
    //           textStore(
    //               text: 'لا يوجد دعوات بعد',
    //               fontsize: 15,
    //               fontfamily: 'Ooredo',
    //               fontWeight: FontWeight.w800,
    //               hexcolor: '#5F5F5F'),
    //         ],
    //       ),
    //     )
    // );
  }
}

// import 'package:flutter/material.dart';
// import 'package:watinplus/generated/l10n.dart';
// import 'package:watinplus/widgets/textStore.dart';
//
// import '../size_config.dart';
//
// class Artboard12 extends StatefulWidget {
//   const Artboard12({Key? key}) : super(key: key);
//
//   @override
//   _Artboard12State createState() => _Artboard12State();
// }
//
// class _Artboard12State extends State<Artboard12> {
//   @override
//   Widget build(BuildContext context) {
//     SizeConfig().init(context);
//     return Scaffold(
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.asset('images/Group 1313.png'),
//               SizedBox(height: SizeConfig().scaleHeight(30)),
//               textStore(
//                   text: S.of(context).Art12_1,
//                   fontsize: 21,
//                   fontfamily: 'Ooredo',
//                   fontWeight: FontWeight.w800,
//                   hexcolor: '#5F5F5F'),
//               SizedBox(height: SizeConfig().scaleHeight(10)),
//               textStore(
//                   text:S.of(context).Art12_2,
//                   fontsize: 19,
//                   fontfamily: 'Ooredo',
//                   fontWeight: FontWeight.w400,
//                   hexcolor: '#5F5F5F'),
//               SizedBox(height: SizeConfig().scaleHeight(70)),
//               textStore(
//                   text: S.of(context).Art12_3,
//                   fontsize: 15,
//                   fontfamily: 'Ooredo',
//                   fontWeight: FontWeight.w800,
//                   hexcolor: '#5F5F5F'),
//             ],
//           ),
//         )
//     );
//   }
// }
