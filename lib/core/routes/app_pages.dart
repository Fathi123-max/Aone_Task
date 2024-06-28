import 'package:get/get.dart';
import 'package:getx_skeleton/modules/auth/data/auth_bindings.dart';
import 'package:getx_skeleton/modules/auth/view/auth_page.dart';
import 'package:getx_skeleton/modules/home/data/home_bindings.dart';
import 'package:getx_skeleton/modules/home/view/home_page.dart';
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
        transition: Transition.size,
        transitionDuration: 1.5.seconds,
        binding: SplashScreenBindings()),
    GetPage(
        name: Routes.authScreen,
        page: () => const AuthPage(),
        transition: Transition.circularReveal,
        transitionDuration: 1.5.seconds,
        binding: AuthBindings()),
    GetPage(
        transition: Transition.cupertino,
        transitionDuration: 1.5.seconds,
        name: Routes.home,
        page: () => const HomePage(),
        binding: HomeBindings()),
  ];
}
