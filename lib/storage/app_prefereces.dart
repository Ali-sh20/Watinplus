import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  static final AppPreferences _instance = AppPreferences._internal();
  late final SharedPreferences _sharedPreferences;

  factory AppPreferences() {
    return _instance;
  }

  AppPreferences._internal();

  Future<void> initPreferences() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<bool> changeLanguage(String languageCode) async{
    return await _sharedPreferences.setString('language_code', languageCode);
  }

  String get language => _sharedPreferences.getString('language_code') ?? 'en';

  Future<bool> changeProfileImage(String ImageProfile) async{
    return await _sharedPreferences.setString('image_profile', ImageProfile);
  }

  String get changeProfile => _sharedPreferences.getString('image_profile') ?? '';


  Future<bool> changeCoverImage(String ImageCover) async{
    return await _sharedPreferences.setString('image_Cover', ImageCover);
  }

  String get changeCover => _sharedPreferences.getString('image_Cover') ?? '';

}
