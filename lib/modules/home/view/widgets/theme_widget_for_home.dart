import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getx_skeleton/core/theme/my_colors.dart';
import 'package:getx_skeleton/core/theme/my_styles.dart';

class ThemeWidgetForHome extends StatelessWidget {
  const ThemeWidgetForHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500.61.w,
      height: 88.12.h,
      child: ListView.builder(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Row(
              children: [
                10.horizontalSpace,
                Container(
                  width: 240.61.w,
                  height: 88.12.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: MyColors.primaryColor,
                    borderRadius: BorderRadius.circular(123.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 7.03.w,
                        ),
                        child: Container(
                          width: 76.40.w,
                          height: 75.90.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(width: 2.w, color: MyColors.green),
                            image: const DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/76x76"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 7.03.w),
                      Center(
                        child: SizedBox(
                          width: 135.w,
                          height: 55.h,
                          child: Text(
                            'INDUSTRY COLLABORATION AND ECOSYSTEMS',
                            style: MyStyles.font12w600Green().copyWith(
                                color: MyColors.white, letterSpacing: 0),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
