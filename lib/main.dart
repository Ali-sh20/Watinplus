import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:watinplus/Screens/Artboard012.dart';
import 'package:watinplus/Screens/Artboard1.dart';
import 'package:watinplus/Screens/Artboard12.dart';
import 'package:watinplus/Screens/Artboard13.dart';
import 'package:watinplus/Screens/Artboard14.dart';
import 'package:watinplus/Screens/Artboard15.dart';
import 'package:watinplus/Screens/Artboard16.dart';
import 'package:watinplus/Screens/Artboard17.dart';
import 'package:watinplus/Screens/Artboard18.dart';
import 'package:watinplus/Screens/Artboard19.dart';
import 'package:watinplus/Screens/Artboard20.dart';
import 'package:watinplus/Screens/Artboard21.dart';
import 'package:watinplus/Screens/Artboard22.dart';
import 'package:watinplus/Screens/Artboard23.dart';
import 'package:watinplus/Screens/Artboard25.dart';
import 'package:watinplus/Screens/Artboard26.dart';
import 'package:watinplus/Screens/Artboard28.dart';
import 'package:watinplus/Screens/Artboard29.dart';
import 'package:watinplus/Screens/Artboard30.dart';
import 'package:watinplus/Screens/Artboard5.dart';
import 'package:watinplus/Screens/Artboard6.dart';
import 'package:watinplus/Screens/Artboard7.dart';
import 'package:watinplus/Screens/Artboard8.dart';
import 'package:watinplus/Screens/Change_password.dart';
import 'package:watinplus/Screens/HomeScreen.dart';
import 'package:watinplus/generated/l10n.dart';
import 'package:watinplus/images/UPLOAD_IMAGE.dart';
import 'package:watinplus/images/UPLOAD_IMAGECover.dart';
import 'package:watinplus/images_screen.dart';
import 'package:watinplus/main_screen.dart';
import 'package:watinplus/on_boarding/Artboard2.dart';
import 'package:watinplus/on_boarding/Artboard3.dart';
import 'package:watinplus/on_boarding/Artboard4.dart';
import 'package:watinplus/on_boarding/on_boarding_Screen.dart';
import 'package:watinplus/sceen/launchScreen.dart';
import 'package:watinplus/sceen/login_screen.dart';
import 'package:watinplus/sceen/register_screen.dart';
import 'package:watinplus/storage/app_prefereces.dart';

import 'Screens/Artboard0012.dart';
import 'Screens/Artboard12_1.dart';
import 'Screens/Artboard24.dart';
import 'Screens/Artboard31.dart';
import 'Screens/Chat_item_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppPreferences().initPreferences();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  static void changeLocale(BuildContext context, Locale locale) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    if(state != null){
      state.changeLocale(locale);
    }
  }

  static void changeImageCover(BuildContext context, String path) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    if(state != null){
      state.changeImageProfile(path);
    }
  }


  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Locale _locale;
  late String _path;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _locale = Locale(AppPreferences().language);
  }

  void changeLocale(Locale locale){
    AppPreferences().changeLanguage(locale.languageCode);
    setState(() {
      _locale = locale;
    });
  }

  void changeImageProfile(String path){
    AppPreferences().changeProfileImage(path);
    setState(() {
      _path = path;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar'),
        Locale('en'),
      ],
      locale: _locale,
      debugShowCheckedModeBanner: false,
      home:Artboard1(),
      routes: {
        '/launchScreen':(context) =>LaunchScreen(),
        '/login_screen':(context) =>LoginScreen(),
        '/register_screen':(context) =>RegisterScreen(),
        // '/main_screen':(context) =>MainScreen(),
        //'/ImageScreen':(context) =>ImageScreen(),
        '/upload_image_screen':(context) =>UploadImageScreen(),
        '/Artboard1': (context) => Artboard1(),
        '/Artboard2': (context) => Artboard2(),
        '/Artboard3': (context) => Artboard3(),
        '/Artboard4': (context) => Artboard4(),
        '/Artboard5': (context) => Artboard5(local: _locale),
        '/Artboard6': (context) => Artboard6(local: _locale),
        '/Artboard7': (context) => Artboard7(local: _locale),
        '/Artboard8': (context) => Artboard8(),
        '/Artboard12': (context) => Artboard12(),
        '/Artboard012': (context) => Artboard012(),
        '/Artboard12_1': (context) => Artboard12_1(),
        '/Artboard0012': (context) => Artboard0012(),
        '/Artboard13': (context) => Artboard13(),
        '/Artboard14': (context) => Artboard14(),
        // '/Artboard15': (context) => Artboard15(local: _locale),   //ما عملتلها لغةةةةةةةةةةةةةةةةةةةةةةةةة
        '/Artboard16': (context) => Artboard16(),
        '/Artboard17': (context) => Artboard17(),
        '/Artboard18': (context) => Artboard18(),
        '/Artboard19': (context) => Artboard19(),
        '/Artboard20': (context) => Artboard20(),
        '/Artboard21': (context) => Artboard21(),
        '/Artboard22': (context) => Artboard22(),
        '/Artboard23': (context) => Artboard23(),
        '/Artboard24': (context) => Artboard24(),
        '/Artboard25': (context) => Artboard25(),
        '/Artboard26': (context) => Artboard26(),
        '/Artboard28': (context) => Artboard28(),
        '/Artboard29': (context) => Artboard29(),
        '/Artboard30': (context) => Artboard30(),
        '/Artboard31': (context) => Artboard31(),
        '/Change_password': (context) => Change_password(local: _locale),
        '/upload_image_screen':(context) =>UploadImageScreen(),
        '/upload_image_screenCover':(context) =>UploadImageScreenCover(),
        '/Home_Screen': (context) => Home_Screen(),
        '/Chat_item_page': (context) => Chat_item_page(),
        '/onboardingScreen': (context) => onboardingScreen(),
      },
    );
  }
}
