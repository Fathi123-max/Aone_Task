import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getx_skeleton/core/theme/my_colors.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class MyStyles {
//text style 16 w700
  static TextStyle font16w700() => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w700,
        color: MyColors.white,
      );
//text style 15 w400 white38
  static TextStyle font15w400White38() => TextStyle(
        fontSize: 15.sp,
        fontWeight: FontWeight.w400,
        color: Colors.white38,
      );

//27 w400
  static TextStyle font27w400() => TextStyle(
        fontSize: 27.sp,
        fontWeight: FontWeight.w400,
        color: MyColors.white,
      );

//20 w700
  static TextStyle font20w700() => TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w700,
        color: MyColors.primaryColor,
      );

  //12 w700
  static TextStyle font12w700() => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w700,
        color: MyColors.white,
      );
//32 w500
  static TextStyle font32w500() => TextStyle(
        fontSize: 32.sp,
        fontWeight: FontWeight.w500,
        color: MyColors.white,
      );

//20 w300
  static TextStyle font20w300() => TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w300,
        color: MyColors.white,
      );
//16 w400
  static TextStyle font16w400() => TextStyle(
        fontSize: 16.sp,
        color: MyColors.green,
        fontWeight: FontWeight.w400,
      );

  //11 w 400
  static TextStyle font11w400() => TextStyle(
        fontSize: 11.sp,
        fontWeight: FontWeight.w400,
        color: MyColors.green,
      );
// outline btn style
  static ButtonStyle outlineBtnStyle() => OutlinedButton.styleFrom(
        fixedSize: Size(331.w, 42.h),
        backgroundColor: const Color(0xFF0EE392),
        side: const BorderSide(color: Color(0xFF0EE392), width: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      );

  // wolt modal sheet theme
  static WoltModalSheetThemeData getModalSheetTheme() =>
      const WoltModalSheetThemeData(
        backgroundColor: MyColors.primaryColor,
        topBarShadowColor: Colors.black12,
        modalBarrierColor: Colors.black45,
        sabGradientColor: Colors.black12,
        bottomSheetShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(60),
          topRight: Radius.circular(60),
        )),
        mainContentScrollPhysics: ClampingScrollPhysics(),
      );
}
