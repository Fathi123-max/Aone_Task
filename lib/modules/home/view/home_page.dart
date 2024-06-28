import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/core/theme/my_colors.dart';

import '../logic/home_controller.dart';
import 'widgets/artical_of_home_page.dart';
import 'widgets/list_of_themes_for_home_screen.dart';
import 'widgets/statics_of_home_page.dart';
import 'widgets/title_and_banner_of_home_page.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: MyColors.homePageBlack,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TitleAndBannerOfHomePage(),
              StaticsOfHomePage(),
              ArticalOfHomePage(),
              ListOfThemesForHomeScreen(),
            ],
          ),
        ));
  }
}
