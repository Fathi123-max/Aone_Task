import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/core/routes/app_pages.dart';
import 'package:getx_skeleton/core/theme/my_colors.dart';
import 'package:getx_skeleton/modules/splash_screen/logic/animated_splash_screen_package.dart';
import 'package:page_transition/page_transition.dart';

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
          Get.offNamed(
            Routes.authScreen,
          );
          return Future.delayed(0.seconds);
        });
      },
      backgroundColor: MyColors.homePageBlack,
      animationDuration: 3.seconds,
      duration: 2500,
      pageTransitionType: PageTransitionType.fade,
      splashTransition: SplashTransition.fadeTransition,
      splash: '[n]https://i.imgur.com/YzcES3l.png',
      disableNavigation: true,
    );
  }
}
