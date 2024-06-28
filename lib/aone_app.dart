import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/core/local/my_shared_pref.dart';
import 'package:getx_skeleton/core/routes/app_pages.dart';
import 'package:getx_skeleton/core/theme/my_theme.dart';
import 'package:getx_skeleton/core/translations/localization_service.dart';

class AoneApp extends StatelessWidget {
  const AoneApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // todo add your (Xd / Figma) artboard size
      designSize: const Size(393, 898),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      rebuildFactor: (old, data) => true,
      builder: (context, widget) {
        return GetMaterialApp(
          // todo add your app name
          title: "Aone Task",
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,

          defaultTransition: Transition.cupertino,
          builder: (context, widget) {
            return Theme(
              data: MyTheme.getThemeData(),
              child: MediaQuery(
                // prevent font from scalling (some people use big/small device fonts)
                // but we want our app font to still the same and dont get affected
                data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
                child: widget!,
              ),
            );
          },

          initialRoute:
              AppPages.initialRoute, // first screen to show when app is running
          getPages: AppPages.routes, // app screens
          locale: MySharedPref.getCurrentLocal(), // app language
          translations: LocalizationService
              .getInstance(), // localization services in app (controller app language)
        );
      },
    );
  }
}
