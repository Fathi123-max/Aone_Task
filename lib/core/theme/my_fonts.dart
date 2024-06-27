import 'package:flutter/material.dart';
import 'package:getx_skeleton/core/local/my_shared_pref.dart';

import '../translations/localization_service.dart';

// todo configure text family and size
class MyFonts {
  // return the right font depending on app language
  static TextStyle get getAppFontType =>
      LocalizationService.supportedLanguagesFontsFamilies[
          MySharedPref.getCurrentLocal().languageCode]!;
}
