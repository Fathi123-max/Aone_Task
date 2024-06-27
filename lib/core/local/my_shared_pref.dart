import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../translations/localization_service.dart';

class MySharedPref {
  // prevent making instance
  MySharedPref._();

  // get storage
  static late SharedPreferences _sharedPreferences;
  static late FlutterSecureStorage _secureStorage;

// Create storage
  final storage = new FlutterSecureStorage();

// // Read value
// String value = await storage.read(key: key);

// // Read all values
// Map<String, String> allValues = await storage.readAll();

// // Delete value
// await storage.delete(key: key);

// // Delete all
// await storage.deleteAll();

// // Write value
// await storage.write(key: key, value: value);

  // STORING KEYS
  static const String _fcmTokenKey = 'fcm_token';
  static const String _currentLocalKey = 'current_local';
  static const String _lightThemeKey = 'is_theme_light';
  static const String _tokenKey = 'token';
  static const String _hasAccessToMediaHubKey = 'has_access_to_media_hub';

  /// init get storage services
  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    _secureStorage = const FlutterSecureStorage();
  }

  static setStorage(SharedPreferences sharedPreferences) {
    _sharedPreferences = sharedPreferences;
  }

//set security token
  static Future<void> setSecurityToken(String token) =>
      _secureStorage.write(key: _tokenKey, value: token);

// get security token
  static Future<String?> getSecurityToken() =>
      _secureStorage.read(key: _tokenKey);

//set has access to media hub
  static Future<void> setHasAccessToMediaHub(int hasAccessToMediaHub) =>
      _sharedPreferences.setInt(_hasAccessToMediaHubKey, hasAccessToMediaHub);

// get has access to media hub
  static int getHasAccessToMediaHub() =>
      _sharedPreferences.getInt(_hasAccessToMediaHubKey) ?? 0;

  /// set theme current type as light theme
  static Future<void> setThemeIsLight(bool lightTheme) =>
      _sharedPreferences.setBool(_lightThemeKey, lightTheme);

  /// get if the current theme type is light
  static bool getThemeIsLight() =>
      _sharedPreferences.getBool(_lightThemeKey) ??
      true; // todo set the default theme (true for light, false for dark)

  /// save current locale
  static Future<void> setCurrentLanguage(String languageCode) =>
      _sharedPreferences.setString(_currentLocalKey, languageCode);

  /// get current locale
  static Locale getCurrentLocal() {
    String? langCode = _sharedPreferences.getString(_currentLocalKey);
    // default language is english
    if (langCode == null) {
      return LocalizationService.defaultLanguage;
    }
    return LocalizationService.supportedLanguages[langCode]!;
  }

  /// save generated fcm token
  static Future<void> setFcmToken(String token) =>
      _sharedPreferences.setString(_fcmTokenKey, token);

  /// get authorization token
  static String? getFcmToken() => _sharedPreferences.getString(_fcmTokenKey);

  /// clear all data from shared pref
  static Future<void> clear() async => await _sharedPreferences.clear();
}
