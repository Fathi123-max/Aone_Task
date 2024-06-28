import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getx_skeleton/modules/home/view/widgets/artical_of_home_page.dart';
import 'package:getx_skeleton/modules/home/view/widgets/theme_widget_for_home.dart';

class ListOfThemesForHomeScreen extends StatelessWidget {
  const ListOfThemesForHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        27.verticalSpace,
        const HomePageCustomTitleWidget(
          title: "Themes",
        ),
        18.verticalSpace,
        const ThemeWidgetForHome()
      ],
    );
  }
}
