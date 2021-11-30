import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:watinplus/firebase/fb_notifications.dart';
import 'package:watinplus/generated/l10n.dart';
import 'package:watinplus/getx_controller/images_getx_controller.dart';
import 'package:watinplus/getx_controller/images_getx_controllerCover.dart';
import 'package:watinplus/models/bn_screen.dart';
import 'package:watinplus/size_config.dart';
import 'package:watinplus/storage/app_prefereces.dart';
import 'package:watinplus/widgets/textStore.dart';
import 'Artboard12.dart';
import 'Artboard12_1.dart';
import 'Artboard13.dart';
import 'Artboard14.dart';
import 'Artboard6.dart';
import 'Artboard8.dart';
import 'package:watinplus/firebase/fb_auth_controller.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen>
    with TickerProviderStateMixin, FbNotifications {
  int _selectedItemIndex = 0;

  late TabController _TabController2;
  late TabController _TabController3;
  int _selectedTabIndex = 0;
  void dispose() {
    // TODO: implement dispose
    _TabController2.dispose();
    _TabController3.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _TabController2 = TabController(length: 2, vsync: this);
    _TabController3 = TabController(length: 3, vsync: this);
    initializeForegroundNotificationForAndroid();
    manageNotificationAction();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: HexColor('#FFFFFF'),
        appBar: AppBar(
          bottom: _selectedItemIndex == 1
              ? TabBar(
                  onTap: (int selectedTabIndex) {
                    setState(() {
                      _selectedTabIndex = selectedTabIndex;
                    });
                  },
                  controller: _TabController2,
                  indicatorColor: HexColor('#019BE1'),
                  // unselectedLabelColor: HexColor('#9DE2C4'),
                  labelStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Ooredo'),
                  unselectedLabelStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Ooredo'),
                  tabs: [
                    Tab(text: S.of(context).Art12_talks),
                    Tab(text: S.of(context).Art12_invitation),
                  ],
                )
              : _selectedItemIndex == 2
                  ? TabBar(
                      onTap: (int selectedTabIndex) {
                        setState(() {
                          _selectedTabIndex = selectedTabIndex;
                        });
                      },
                      controller: _TabController3,
                      indicatorColor: HexColor('#019BE1'),
                      labelStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Ooredo'),
                      unselectedLabelStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Ooredo'),
                      tabs: [
                        Tab(text: S.of(context).Art13_declared),
                        Tab(text: S.of(context).Art13_active),
                        Tab(text: S.of(context).Art13_completed),
                      ],
                    )
                  : null,
          backgroundColor: HexColor('#019BE1'),
          title: Text(
            _selectedItemIndex == 0
                ? S.of(context).ArtHome_main
                : _selectedItemIndex == 1
                    ? S.of(context).ArtHome_received
                    : _selectedItemIndex == 2
                        ? S.of(context).ArtHome_business
                        : S.of(context).ArtHome_profiles,
            style: TextStyle(
                fontFamily: 'Ooredo',
                fontWeight: FontWeight.w600,
                fontSize: SizeConfig().scaleTextFont(14),
                color: HexColor('#ffffff')),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  showDevelpinfo();
                },
                icon: Icon(Icons.chat)),
            IconButton(
                onPressed: () {
                  setState(() {
                    _selectedTabIndex = 1;
                  });
                  setState(() {
                    _selectedItemIndex = 1;
                    _selectedTabIndex = 1;
                  });
                },
                icon: Icon(Icons.notifications)),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: HexColor('#FFFFFF'),
          elevation: 0,
          onTap: (int selectedItemIndex) {
            setState(() {
              _selectedItemIndex = selectedItemIndex;
            });
          },
          currentIndex: _selectedItemIndex,
          type: BottomNavigationBarType.fixed,
          fixedColor: HexColor('#019BE1'),
          // selectedItemColor: HexColor('#019BE1'),
          // selectedIconTheme: IconThemeData(color: HexColor('#019BE1')),

          unselectedItemColor: HexColor('#9EA7C1'),
          unselectedIconTheme: IconThemeData(color: HexColor('#9EA7C1')),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedLabelStyle: TextStyle(
              fontFamily: 'Ooredo',
              fontWeight: FontWeight.w600,
              fontSize: SizeConfig().scaleTextFont(12)),
          selectedLabelStyle: TextStyle(
              fontFamily: 'Ooredo',
              fontWeight: FontWeight.w600,
              fontSize: SizeConfig().scaleTextFont(14)),
          iconSize: 25,
          items: [
            BottomNavigationBarItem(
              label: S.of(context).ArtHome_main,
              icon: Icon(Icons.house_outlined),
            ),
            BottomNavigationBarItem(
              label: S.of(context).ArtHome_received,
              icon: Icon(Icons.email_outlined),
            ),
            BottomNavigationBarItem(
              label: S.of(context).ArtHome_business,
              icon: Icon(Icons.work_outline_rounded),
            ),
            BottomNavigationBarItem(
              label: S.of(context).ArtHome_profiles,
              icon: Icon(Icons.account_circle_outlined),
            ),
          ],
        ),
        drawer: SafeArea(
          child: Drawer(
              child: Column(children: [
            Expanded(
              child: Container(
                color: HexColor('#019BE1'),
                child: Stack(children: [
                  Image.asset('images/Scroll Group 1.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 14.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Card(
                              clipBehavior: Clip.antiAlias,
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: CircleAvatar(
                                radius: 50,
                                child: Image.network(
                                  // ImagesGetxController.to.images.last.getDownloadURL()
                                  AppPreferences().changeProfile,
                                  fit: BoxFit.cover, width: double.infinity,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig().scaleHeight(8),
                            ),
                            textStore(
                                text: S.of(context).drawer_name,
                                fontsize: 16,
                                fontfamily: 'Ooredo',
                                fontWeight: FontWeight.w600,
                                hexcolor: '#ffffff'),
                            SizedBox(
                              height: SizeConfig().scaleHeight(8),
                            ),
                            textStore(
                                text: '${S.of(context).drawer_country}' +
                                    ' - ' +
                                    '${S.of(context).drawer_city}',
                                fontsize: 10,
                                fontfamily: 'Ooredo',
                                fontWeight: FontWeight.w600,
                                hexcolor: '#ffffff'),
                          ]),
                    ),
                  ),
                ]),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: HexColor('#019BE1'),
                child: ListView(children: [
                  ListTile(
                    onTap: () {
                      setState(() {
                        _selectedItemIndex = 3;
                      });
                      Navigator.pop(context);
                    },
                    leading: Icon(Icons.account_circle_outlined,
                        color: Colors.white, size: 30),
                    title: Text(
                      S.of(context).drawer_profile,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Ooredo',
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, '/Artboard30');
                    },
                    leading: Icon(Icons.support_agent_outlined,
                        color: Colors.white, size: 30),
                    title: Text(
                      S.of(context).drawer_TechnicalSupport,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Ooredo',
                          fontWeight: FontWeight.w600,
                          fontSize: SizeConfig().scaleTextFont(14)),
                    ),
                    trailing: null,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, '/Artboard16');
                    },
                    leading: Icon(Icons.settings_outlined,
                        color: Colors.white, size: 30),
                    title: Text(
                      S.of(context).drawer_Settings,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Ooredo',
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      showdeletDialog();
                    },
                    leading:
                        Icon(Icons.exit_to_app, color: Colors.white, size: 30),
                    title: Text(
                      S.of(context).drawer_LogOut,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Ooredo',
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    indent: 16,
                    endIndent: 12,
                    color: HexColor('#00AFFF'),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, '/Artboard19');
                    },
                    leading:
                        Icon(Icons.info_outline, color: Colors.white, size: 30),
                    title: Text(
                      S.of(context).drawer_About,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Ooredo',
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                    trailing: null,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, '/Artboard20');
                    },
                    leading: Icon(Icons.quiz_outlined,
                        color: Colors.white, size: 30),
                    title: Text(
                      S.of(context).drawer_Tips,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Ooredo',
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, '/Artboard21');
                    },
                    leading: Icon(Icons.emoji_events_outlined,
                        color: Colors.white, size: 30),
                    title: Text(
                      S.of(context).drawer_SuccessPartners,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Ooredo',
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ),
                ]),
              ),
            ),
            Container(
              height: 60,
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              width: double.infinity,
              color: HexColor('#019BE1'),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  textStore(
                    text: 'WatinPlus - 2021 ',
                    fontsize: 10,
                    fontfamily: 'Ooredo',
                    fontWeight: FontWeight.w800,
                    hexcolor: '#ffffff',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          ])),
        ),
        body: _selectedItemIndex == 0
            ? Artboard8()
            : _selectedItemIndex == 1 && _selectedTabIndex == 0
                ? Artboard12()
                : _selectedItemIndex == 1 && _selectedTabIndex == 1
                    ? Artboard12_1()
                    : _selectedItemIndex == 2 && _selectedTabIndex == 0
                        ? Artboard13()
                        : _selectedItemIndex == 2 && _selectedTabIndex == 1
                            ? Artboard13()
                            : _selectedItemIndex == 2 && _selectedTabIndex == 2
                                ? Artboard13()
                                : Artboard14());
  }

  void showDevelpinfo() {
    showDialog(
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(.26),
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: HexColor('#019BE1'),
          titleTextStyle: TextStyle(
              color: Colors.white,
              fontFamily: 'Ooredo',
              fontWeight: FontWeight.w600,
              fontSize: SizeConfig().scaleTextFont(17)),
          contentTextStyle: TextStyle(fontSize: 15, color: Colors.black),
          title: Text(
            S.of(context).ChooseTheSection,
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Ooredo',
                fontWeight: FontWeight.w600,
                fontSize: SizeConfig().scaleTextFont(17)),
          ),
          content: Text(
            S.of(context).PleaseChooseTheSection,
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Ooredo',
                fontWeight: FontWeight.w600,
                fontSize: SizeConfig().scaleTextFont(14)),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  setState(() {
                    _selectedItemIndex = 1;
                    _selectedTabIndex = 0;
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  S.of(context).Ok,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Ooredo',
                      fontWeight: FontWeight.w600,
                      fontSize: 17),
                )),
            // TextButton(onPressed: (){Navigator.pop(context);}, child: Text('Cancel'))
          ],
        );
      },
    );
  }

  void showdeletDialog() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(12), topLeft: Radius.circular(12)),
        ),
        context: context,
        clipBehavior: Clip.antiAlias,
        backgroundColor: HexColor('#ffffff'),
        builder: (context) {
          return Card(
            margin: EdgeInsets.zero,
            child: Container(
              margin: EdgeInsets.zero,
              child: Padding(
                padding: const EdgeInsets.only(top: 22, left: 16, right: 6),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 8),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: HexColor('#019BE1'),
                              child:
                                  Icon(Icons.logout, color: HexColor('ffffff')),
                            )
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            textStore(
                                text: S.of(context).drawer_LogOut,
                                fontsize: SizeConfig().scaleTextFont(10),
                                fontfamily: 'Ooredo',
                                fontWeight: FontWeight.w600,
                                hexcolor: '#FFFFFF'),
                            SizedBox(height: 2),
                            textStore(
                                text: S.of(context).drawer_ConfirmLogOut,
                                fontsize: 16,
                                fontfamily: 'Ooredo',
                                fontWeight: FontWeight.w600,
                                hexcolor: '#6E7989'),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 28),
                    Row(children: [
                      Spacer(),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: textStore(
                              text: S.of(context).drawer_Back,
                              fontsize: 16,
                              fontfamily: 'Ooredo',
                              fontWeight: FontWeight.w600,
                              hexcolor: '#6E7989'),
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            minimumSize: Size(94, 36),
                            primary: HexColor('#ffffff'),
                          )),
                      SizedBox(width: 30),
                      ElevatedButton(
                          onPressed: () {
                            logout();
                          },
                          child: textStore(
                              text: S.of(context).drawer_LogOut,
                              fontsize: 16,
                              fontfamily: 'Ooredo',
                              fontWeight: FontWeight.w600,
                              hexcolor: '#ffffff'),
                          style: ElevatedButton.styleFrom(
                              elevation: 4,
                              minimumSize: Size(94, 36),
                              primary: HexColor('#019BE1'),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4))))),
                    ])
                  ],
                ),
              ),
              width: double.infinity,
              height: 170,
            ),
          );
        });
  }

  Future<void> logout() async {
    await FbAuthController().signOut();
    Navigator.pushReplacementNamed(context, '/Artboard7');
  }
}
