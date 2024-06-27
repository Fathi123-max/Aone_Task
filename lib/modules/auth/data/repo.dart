import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/core/data/api_url.dart';
import 'package:getx_skeleton/core/local/my_shared_pref.dart';
import 'package:getx_skeleton/core/network/base_client.dart';
import 'package:getx_skeleton/modules/auth/data/model/token_model.dart';
import 'package:getx_skeleton/modules/auth/logic/auth_controller.dart';
import 'package:getx_skeleton/modules/home/view/home_page.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class AuthRepo {
  Future<bool> requestOtp({required BuildContext context}) async {
    await BaseClient.safeApiCall(
      data: {
        "email": Get.find<AuthController>().emailTextEditingController.text
      },
      ApiUrl.requestOtp,
      RequestType.post,
      onSuccess: (res) {
        res.statusCode == 200
            ? WoltModalSheet.of(context).showAtIndex(3)
            : null;
        return true;
      },
      onError: (error) {
        BaseClient.handleApiError(error);
        return false;
      },
    );
    return false;
  }

  verifyOtp({required BuildContext context}) async {
    await SmsAutoFill().listenForCode();
    await BaseClient.safeApiCall(
      data: {
        "email": Get.find<AuthController>().emailTextEditingController.text,
        "otp": Get.find<AuthController>().otpController.text
      },
      ApiUrl.verifyOtp,
      RequestType.post,
      onSuccess: (res) {
        if (res.statusCode == 200) {
          TokenModel tokenModel = TokenModel.fromJson(res.data);
          MySharedPref.setSecurityToken(tokenModel.token!);

          MySharedPref.setHasAccessToMediaHub(tokenModel.hasAccessToMediaHub!);
          print(tokenModel.hasAccessToMediaHub);
          print(tokenModel.token);
          Get.off(() => const HomePage());
        } else {}
      },
      onError: (error) {
        BaseClient.handleApiError(error);
      },
    );
  }
}//m@aone.sa
