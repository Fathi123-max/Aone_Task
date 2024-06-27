import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/core/theme/my_colors.dart';
import 'package:getx_skeleton/core/theme/my_styles.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

import '../view/widgets/auth_button.dart';
import '../view/widgets/auth_text_filed.dart';

class AuthController extends GetxController {
  @override
  void onInit() {}
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController fullNameTextEditingController = TextEditingController();

  SliverWoltModalSheetPage sign(
      BuildContext modalSheetContext, TextTheme textTheme) {
    return NonScrollingWoltModalSheetPage(
      enableDrag: false,
      resizeToAvoidBottomInset: true,
      id: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          71.verticalSpace,
          Image(
              width: 142.w,
              height: 72.h,
              image: const AssetImage('assets/images/auth_logo.png'),
              fit: BoxFit.fill),
          26.verticalSpace,
          Text('Future Aviation Forum', style: MyStyles.font16w700()),
          29.verticalSpace,
          Text(
            'Make a good first\nimpression',
            textAlign: TextAlign.center,
            style: MyStyles.font27w400(),
          ),
          14.verticalSpace,
          Text(
            'Log in create your profile and get the most\nout of your event experience',
            textAlign: TextAlign.center,
            style: MyStyles.font15w400White38(),
          ),
          45.verticalSpace,
          AuthButton(
            onPressed: () {
              WoltModalSheet.of(modalSheetContext).showNext();
            },
            name: 'Sign in',
          ),
          44.verticalSpace,
          Text(
            'Register For The Event ?',
            style: MyStyles.font12w700(),
          ),
        ],
      ),
    );
  }

  SliverWoltModalSheetPage signIn(
      BuildContext modalSheetContext, TextTheme textTheme) {
    return NonScrollingWoltModalSheetPage(
      enableDrag: false,
      resizeToAvoidBottomInset: true,
      id: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          71.verticalSpace,
          Text('Sign in',
              textAlign: TextAlign.center, style: MyStyles.font32w500()),
          82.verticalSpace,
          AuthTextFiled(
            textFiledHeader: "Email",
            controller: emailTextEditingController,
          ),
          23.verticalSpace,
          Row(children: [
            33.horizontalSpace,
            Text(
              'Remember me',
              style: MyStyles.font16w400(),
            ),
            const Spacer(),
            Switch.adaptive(
              value: true,
              activeColor: MyColors.white,
              activeTrackColor: MyColors.toggolecolor,
              onChanged: (value) {},
            ),
            30.horizontalSpace
          ]),
          45.verticalSpace,
          AuthButton(
            onPressed: () {
              WoltModalSheet.of(modalSheetContext).showNext();
            },
            name: 'GO',
          ),
          44.verticalSpace,
          Text(
            'Register For The Event ?',
            style: MyStyles.font12w700(),
          ),
        ],
      ),
    );
  }

  SliverWoltModalSheetPage signup(
      BuildContext modalSheetContext, TextTheme textTheme) {
    return NonScrollingWoltModalSheetPage(
      enableDrag: false,
      resizeToAvoidBottomInset: true,
      id: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          71.verticalSpace,
          Text('Sign up',
              textAlign: TextAlign.center, style: MyStyles.font32w500()),
          82.verticalSpace,
          AuthTextFiled(
            textFiledHeader: "Full Name",
            controller: fullNameTextEditingController,
          ),
          15.verticalSpace,
          AuthTextFiled(
            textFiledHeader: "Email",
            controller: emailTextEditingController,
          ),
          34.verticalSpace,
          AuthButton(
            onPressed: () {
              WoltModalSheet.of(modalSheetContext).showNext();
            },
            name: 'GO',
          ),
        ],
      ),
    );
  }

  SliverWoltModalSheetPage confirmationCode(
      BuildContext modalSheetContext, TextTheme textTheme) {
    return NonScrollingWoltModalSheetPage(
      enableDrag: false,
      resizeToAvoidBottomInset: true,
      id: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          36.verticalSpace,
          Text('Confirmation Code',
              textAlign: TextAlign.center, style: MyStyles.font32w500()),
          52.verticalSpace,
          Text(
            'Please write the 6-digit \ncode sent via your \nemail correctly',
            textAlign: TextAlign.center,
            style: MyStyles.font20w300().copyWith(height: 1),
          ),
          52.verticalSpace,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 300.w,
                height: 42.h,
                child: PinFieldAutoFill(
                    decoration: BoxLooseDecoration(
                        textStyle: const TextStyle(color: MyColors.white),
                        radius: const Radius.circular(8),
                        strokeWidth: 1.5,
                        bgColorBuilder:
                            const FixedColorBuilder(Color(0xFF2F1B8E)),
                        strokeColorBuilder: const FixedColorBuilder(Colors
                            .green)), // UnderlineDecoration, BoxLooseDecoration or BoxTightDecoration see https://github.com/TinoGuo/pin_input_text_field for more info,
                    currentCode: "", // prefill with a code
                    onCodeSubmitted: null, //code submitted callback
                    onCodeChanged: null, //code changed callback
                    codeLength: 6 //code length, default 6
                    ),
              ),
              5.verticalSpace,
              Row(
                children: [
                  47.horizontalSpace,
                  Image.asset(
                    "assets/images/timer.png",
                    width: 11.h,
                    height: 13.w,
                  ),
                  1.horizontalSpace,
                  Text(
                    '00:59',
                    textAlign: TextAlign.center,
                    style: MyStyles.font11w400(),
                  ),
                  const Spacer(),
                  Text(
                    'Resend the code',
                    textAlign: TextAlign.center,
                    style: MyStyles.font11w400(),
                  ),
                  46.horizontalSpace
                ],
              )
            ],
          ),
          34.verticalSpace,
          AuthButton(
            onPressed: () {
              WoltModalSheet.of(modalSheetContext).showNext();
            },
            name: 'GO',
          ),
        ],
      ),
    );
  }
}
