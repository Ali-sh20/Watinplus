import 'package:flutter/material.dart';
import 'package:watinplus/fb_auth_controller/FbAuthController.dart';
import 'package:watinplus/utils/helpers.dart';
import 'package:watinplus/widgets/app_textfield.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> with Helpers{
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Register',
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
            ElevatedButton(onPressed: () async  => preformCreateAccount()
              , child: Text('LOGIN'),
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50)
              ),
            )


          ],
        ),
      ),
    );
  }
  Future<void> preformCreateAccount() async {
    if(checkData()){
      await createAccount();
    }
  }
  bool checkData(){
    if(_emailTextEditingController.text.isNotEmpty&&_passwordTextEditingController.text.isNotEmpty){
      return true;
    }
    showSnackBar(context, message: 'Enter required data',error: true);

    return false;
  }
  Future<void> createAccount() async{
    bool status =await FbAuthController().createAccount(context: context, email: _emailTextEditingController.text, password: _passwordTextEditingController.text);
    if(status) {
      Navigator.pushReplacementNamed(context, '/login_screen');
      // clear();
    } }

// void clear(){
//   _emailTextEditingController.text='';
//   _passwordTextEditingController.text='';
// }
}

