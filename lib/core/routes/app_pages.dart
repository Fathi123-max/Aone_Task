import 'package:get/get.dart';
import 'package:getx_skeleton/modules/splash_screen/data/splash_screen_bindings.dart';
import 'package:getx_skeleton/modules/splash_screen/ui/splash_screen_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initialRoute = Routes.splashScreen;

  static final List<GetPage<dynamic>> routes = [
    GetPage(
        name: Routes.splashScreen,
        page: () => const SplashScreenPage(),
        binding: SplashScreenBindings()),
  ];
}
