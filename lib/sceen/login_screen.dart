import 'package:flutter/material.dart';
import 'package:watinplus/fb_auth_controller/FbAuthController.dart';
import 'package:watinplus/utils/helpers.dart';
import 'package:watinplus/widgets/app_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>with Helpers  {
  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextEditingController=TextEditingController();
    _passwordTextEditingController=TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'LOGIN',
          style: TextStyle(
              color: Colors.black
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
        child: Column(
          children: [
            AppTextField(textEditingController: _emailTextEditingController, hint: 'Email', keyboardType: TextInputType.emailAddress),
            SizedBox(height: 15,),
            AppTextField(textEditingController: _passwordTextEditingController, hint: 'Password', keyboardType: TextInputType.text,obscureText: false,),
            SizedBox(height: 25,),
            ElevatedButton(onPressed: () async=> await preformLogin() , child: Text('LOGIN'),
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50)
              ),
            ),
            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {
                  Navigator.pushNamed(context, '/register_screen');
                }, child: Text('CREATE ACCOUNT')),
                SizedBox(height: 50,
                  child:VerticalDivider(color: Colors.grey,
                    width: 30,
                    indent: 10,
                    endIndent: 10,),
                ),
                TextButton(onPressed: () {
                  Navigator.pushReplacementNamed(context, '/forgetPassword_screen');
                }, child: Text('Forget Password'
                )),

              ],
            )


          ],
        ),
      ),
    );
  }

  Future<void> preformLogin() async {
    if(checkData()){
      await login();
    }
  }
  bool checkData(){
    if(_emailTextEditingController.text.isNotEmpty&&_passwordTextEditingController.text.isNotEmpty){
      return true;
    }
    showSnackBar(context, message: 'Enter required data 22',error: true);

    return false;
  }
  Future<void> login() async{
    bool status =await FbAuthController().signIn(context: context, email: _emailTextEditingController.text, password: _passwordTextEditingController.text);
    if(status) Navigator.pushReplacementNamed(context, '/main_screen');
  }
}

