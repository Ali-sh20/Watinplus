// import 'dart:convert';
// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:watinplus/utils/helpers.dart';
//
// import 'api_settings.dart';
//
// class ProfileApiController with Helpers {
//
//   Future<bool> login(BuildContext context,
//       {required String mobile, required String password}) async {
//     var url = Uri.parse(ApiSettings.LOGIN);
//     var response =
//         await http.post(url, body: {'mobile': mobile, 'password': password});
//     if (response.statusCode < 400) {
//       var jsonResponse = jsonDecode(response.body);
//       Profile profile = Profile.fromJson(jsonResponse['data']);
//       await AppPrefController().save(profile);
//       return true;
//     } else if (response.statusCode != 500) {
//       showSnackBar(context,
//           message: jsonDecode(response.body)['message'], error: true);
//     } else {
//       showSnackBar(context,
//           message: 'Something went worng , place try again!', error: true);
//     }
//     return false;
//   }
//
//   Future<bool> logout(BuildContext context) async {
//     var url = Uri.parse(ApiSettings.LOGOUT);
//     var response = await http.get(url, headers: {
//       HttpHeaders.authorizationHeader: AppPrefController().token,
//       'X-Requested-With': 'XMLHttpRequest'
//     });
//     if (response.statusCode < 400) {
//       await AppPrefController().logout();
//       return true;
//     } else if (response.statusCode != 500) {
//       showSnackBar(context,
//           message: jsonDecode(response.body)['message'], error: true);
//     } else {
//       showSnackBar(context,
//           message: 'Something went wrong, please try again!', error: true);
//     }
//     return false;
//   }
//
//   Future register(BuildContext context, Profile profile) async {
//     var url = Uri.parse(ApiSettings.REGISTER);
//     var response = await http.post(url, body: {
//       'name': profile.name,
//       'mobile': profile.mobile,
//       'password': profile.password,
//       'gender': profile.gender,
//       'id':profile.city.id,
//     });
//
//     if (response.statusCode < 400) {
//       showSnackBar(context, message: jsonDecode(response.body)['message']);
//       return true;
//     } else if (response.statusCode != 500) {
//       showSnackBar(context,
//           message: jsonDecode(response.body)['message'], error: true);
//     } else {
//       showSnackBar(context,
//           message: 'Something went wrong, please try again!', error: true);
//     }
//   }
//
//   Future<bool> forgetPassword(BuildContext context,
//       {required String phone}) async {
//     var url = Uri.parse(ApiSettings.FORGETPASSWORD);
//     var response = await http.post(url, body: {'mobile': phone});
//     if (response.statusCode < 400) {
//       print(jsonDecode(response.body)['code']);
//       return true;
//     } else if (response.statusCode != 500) {
//       showSnackBar(context,
//           message: jsonDecode(response.body)['message'], error: true);
//     } else {
//       showSnackBar(context,
//           message: 'Something went wrong, please try again!', error: true);
//     }
//     return false;
//   }
//   Future<bool> resetPassword(BuildContext context,
//       {required phone, required String code, required String password}) async {
//     var url = Uri.parse(ApiSettings.RESETPASSWORD);
//     var response = await http.post(
//       url,
//       body: {
//         'mobile': phone,
//         'password': password,
//         'password_confirmation': password,
//         'code': code,
//       },
//     );
//
//     if (response.statusCode < 400) {
//       return true;
//     } else if (response.statusCode != 500) {
//       showSnackBar(context,
//           message: jsonDecode(response.body)['message'], error: true);
//     } else {
//       showSnackBar(context,
//           message: 'Something went wrong, please try again!', error: true);
//     }
//     return false;
//   }
// }
