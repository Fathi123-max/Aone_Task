import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/core/theme/my_colors.dart';
import 'package:getx_skeleton/core/theme/my_styles.dart';
import 'package:getx_skeleton/modules/auth/logic/auth_controller.dart';

class AuthButton extends GetWidget<AuthController> {
  const AuthButton({
    Key? key,
    this.onPressed,
    this.name,
  }) : super(key: key);
  //onpress
  final Function()? onPressed;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return OutlinedButton(
          onPressed: onPressed,
          child: controller.isLoading.value
              ? SizedBox(
                  height: 20.h,
                  width: 20.w,
                  child: const CircularProgressIndicator(
                    color: MyColors.white,
                    strokeWidth: 3,
                  ),
                )
              : Text(name ?? 'Sign in',
                  textAlign: TextAlign.center, style: MyStyles.font20w700()),
          style: MyStyles.outlineBtnStyle());
    });
  }
}
