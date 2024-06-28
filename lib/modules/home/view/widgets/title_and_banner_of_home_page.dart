import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/core/theme/my_styles.dart';

class TitleAndBannerOfHomePage extends StatelessWidget {
  const TitleAndBannerOfHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/home_background.png',
            width: double.infinity, height: 380.h, fit: BoxFit.cover),
        Positioned(
          top: 96.h,
          left: Get.width / 2 - 200.w,
          right: Get.width / 2 - 200.w,
          child: Column(
            children: [
              Image.asset('assets/images/auth_logo.png',
                  height: 89.h, width: 175.w, fit: BoxFit.fill),
              18.verticalSpace,
              Text(
                'Elevating Global',
                textAlign: TextAlign.center,
                style: MyStyles.font32w900(),
              ),
              Text(
                'Connectivity',
                textAlign: TextAlign.center,
                style: MyStyles.font32w900(),
              )
            ],
          ),
        ),
      ],
    );
  }
}
