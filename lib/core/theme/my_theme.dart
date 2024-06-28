import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/core/local/my_shared_pref.dart';

import 'my_styles.dart';

class MyTheme {
  static getThemeData() {
    return ThemeData(
        // main color (app bar,tabs..etc)
        primaryColor: const Color(0xFF20125D),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF20125D)),
        // custom themes

        // color of text in textfild
        inputDecorationTheme: const InputDecorationTheme(
          fillColor: Color(0xFF20125D),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Color(0x660EE392)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Color.fromARGB(255, 12, 34, 177)),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Color.fromARGB(255, 215, 33, 33)),
          ),
          hintStyle: TextStyle(color: Colors.white),
          labelStyle: TextStyle(color: Colors.white),
          errorStyle: TextStyle(color: Colors.white),
        ),
        extensions: [
          MyStyles.getModalSheetTheme(),
        ]);
  }

  /// update app theme and save theme type to shared pref
  /// (so when the app is killed and up again theme will remain the same)
  static changeTheme() {
    // *) check if the current theme is light (default is light)
    bool isLightTheme = MySharedPref.getThemeIsLight();

    // *) store the new theme mode on get storage
    MySharedPref.setThemeIsLight(!isLightTheme);

    // *) let GetX change theme
    Get.changeThemeMode(!isLightTheme ? ThemeMode.light : ThemeMode.dark);
  }

  /// check if the theme is light or dark
  bool get getThemeIsLight => MySharedPref.getThemeIsLight();
}
