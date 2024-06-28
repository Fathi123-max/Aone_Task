import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getx_skeleton/core/theme/my_colors.dart';
import 'package:getx_skeleton/core/theme/my_styles.dart';

class StaticsOfHomePage extends StatelessWidget {
  const StaticsOfHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90.h,
      decoration: const BoxDecoration(color: MyColors.blue),
      child: SizedBox(
        width: 317.w,
        height: 45.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('5,000', style: MyStyles.font27w700Green()),
                Text('VISITORS EXPECTED', style: MyStyles.font9w400White()),
              ],
            ),
            17.horizontalSpace,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('120+', style: MyStyles.font27w700Green()),
                Text('SPEAKERS', style: MyStyles.font9w400White()),
              ],
            ),
            17.horizontalSpace,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('100+', style: MyStyles.font27w700Green()),
                Text('COUNTRIES', style: MyStyles.font9w400White()),
              ],
            ),
            17.horizontalSpace,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('50+', style: MyStyles.font27w700Green()),
                Text('PARTNERS', style: MyStyles.font9w400White()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
