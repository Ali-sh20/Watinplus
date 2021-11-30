import 'package:flutter/material.dart';
import 'package:watinplus/fb_auth_controller/FbAuthController.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    String route=
    FbAuthController().isLoggedIn?'/Home_Screen':'/login_screen';

    Navigator.pushReplacementNamed(context,route);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('FIREBASE APP',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 22
        ),
        ),
      ),
    );
  }
}
