import 'package:get/get.dart';
import 'package:getx_skeleton/modules/auth/data/auth_bindings.dart';
import 'package:getx_skeleton/modules/auth/view/auth_page.dart';
import 'package:getx_skeleton/modules/splash_screen/data/splash_screen_bindings.dart';
import 'package:getx_skeleton/modules/splash_screen/view/splash_screen_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initialRoute = Routes.splashScreen;

  static final List<GetPage<dynamic>> routes = [
    GetPage(
        name: Routes.splashScreen,
        page: () => const SplashScreenPage(),
        binding: SplashScreenBindings()),
    GetPage(
        name: Routes.authScreen,
        page: () => const AuthPage(),
        binding: AuthBindings()),
  ];
}
