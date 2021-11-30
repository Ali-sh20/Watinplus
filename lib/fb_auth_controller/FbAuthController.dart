import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:watinplus/utils/helpers.dart';

class FbAuthController with Helpers{
  FirebaseAuth _firebaseAuth=FirebaseAuth.instance;

  Future<bool> createAccount(
      {
        required BuildContext context,
        required String email,
        required String password,
      }) async{
    try{
      UserCredential userCredential=await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      return await checkEmailVerification(userCredential: userCredential,context: context);
    } on FirebaseAuthException catch(e){
      _controllerException(context: context, exception: e);
    }catch(e){
      print('Exception: $e');
    }
    return false;

  }


  Future<bool> forgetPassword({required BuildContext context,required String email}) async{
    try{
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return true;
    }on FirebaseAuthException catch(e){
      _controllerException(context: context, exception: e);
    }
    return false;
  }

  Future<bool> signIn({
    required BuildContext context,
    required String email,
    required String password
  }) async{
    try{
      UserCredential userCredential=await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      return await checkEmailVerification(userCredential: userCredential, context: context);
    }on FirebaseAuthException catch (e){
      _controllerException(context: context, exception: e);

    }catch (e){

    }
    return false;
  }

  Future<bool> checkEmailVerification({
    required BuildContext context,
    required UserCredential userCredential}) async{
    if(!userCredential.user!.emailVerified){
      await userCredential.user!.sendEmailVerification();
      await signOut();
      showSnackBar(context, message: 'Email must be verified, check and verify',error: true);
      return false;
    }
    return true;
  }


  Future<void> signOut() async{
    _firebaseAuth.signOut();

  }

  bool get isLoggedIn => _firebaseAuth.currentUser!=null;

  void _controllerException({required BuildContext context, required FirebaseAuthException exception}){
    if(exception.code=='email-already-in-use'){
    }else if(exception.code=='invalid-email'){

    }else if(exception.code=='operation-not-allowed'){

    }else if(exception.code=='weak-password'){
    }else if(exception.code=='user-not-found'){

    }
  }
}