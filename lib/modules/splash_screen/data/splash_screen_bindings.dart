import 'package:get/get.dart';

import '../logic/splash_screen_controller.dart';

class SplashScreenBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(SplashScreenController());
  }
}
