import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getx_skeleton/core/theme/my_colors.dart';
import 'package:getx_skeleton/core/theme/my_styles.dart';
import 'package:readmore/readmore.dart';

class ArticalOfHomePage extends StatelessWidget {
  const ArticalOfHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        38.verticalSpace,
        const HomePageCustomTitleWidget(
          title: "Discover the Future of Aviation",
        ),
        17.verticalSpace,
        Row(
          children: [
            31.horizontalSpace,
            SizedBox(
              width: 325.w,
              child: ReadMoreText(
                // trimLength: 400,
                trimLines: 5,
                moreStyle: MyStyles.font12w600Green(),
                trimMode: TrimMode.Line,
                'Under the esteemed patronage of the Custodian of the Two Holy Mosques King Salman bin Abdulaziz Al-Saud, the General Authority of Civil Aviation (GACA) is hosting the third edition of the Future Aviation Forum (FAF 2024) at the King Abdulaziz International Conference Center in Riyadh, Saudi Arabia, on 20-22 May 2024. FAF 2024 will focus on \'Elevating Global Connectivity\' and strives to enhance aviation ...',
                textAlign: TextAlign.justify,
                trimCollapsedText: '\n\n Read more',
                trimExpandedText: '\n\nRead less',
                style: MyStyles.font12w400White(),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class HomePageCustomTitleWidget extends StatelessWidget {
  const HomePageCustomTitleWidget({
    Key? key,
    this.title,
  }) : super(key: key);

  final String? title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            20.horizontalSpace,
            Container(
              width: 5.w,
              height: 5.h,
              decoration: ShapeDecoration(
                color: MyColors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
            5.horizontalSpace,
            Text(title ?? 'FAF 2024', style: MyStyles.font20w600White()),
          ],
        ),
      ],
    );
  }
}
