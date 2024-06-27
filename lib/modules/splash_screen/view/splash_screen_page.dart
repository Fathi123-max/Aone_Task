import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/core/routes/app_pages.dart';
import 'package:getx_skeleton/modules/splash_screen/logic/animated_splash_screen_package.dart';

import '../logic/splash_screen_controller.dart';

class SplashScreenPage extends GetView<SplashScreenController> {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // this a custom implementaion of splash screen to be used in application
    // to achieve better user experience with Network images and animations
    return AnimatedSplashScreen.withScreenFunction(
      screenFunction: () async {
        return Future.delayed(5.seconds).then((value) {
          Get.offNamed(Routes.authScreen);
          return Future.value();
        });
      },
      splash: '[n]https://i.imgur.com/YzcES3l.png',
      disableNavigation: true,
    );
  }
}
