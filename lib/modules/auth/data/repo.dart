import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/core/data/api_url.dart';
import 'package:getx_skeleton/core/local/my_shared_pref.dart';
import 'package:getx_skeleton/core/network/base_client.dart';
import 'package:getx_skeleton/modules/auth/data/model/token_model.dart';
import 'package:getx_skeleton/modules/auth/logic/auth_controller.dart';
import 'package:getx_skeleton/modules/home/view/home_page.dart';
import 'package:sms_autofill/sms_autofill.dart';

class AuthRepo {
  Future<bool> requestOtp({required BuildContext context}) async {
    var controller = Get.find<AuthController>();
    await BaseClient.safeApiCall(
      data: {"email": controller.emailTextEditingController.text},
      ApiUrl.requestOtp,
      RequestType.post,
      onLoading: () {
        controller.isLoading.value = true;
      },
      onSuccess: (res) {
        if (res.statusCode == 200) {
          controller.isLoading.value = false;
          controller.pageIndexNotifier.value = ValueNotifier(3);
        }

        return true;
      },
      onError: (error) {
        controller.isLoading.value = false;
        BaseClient.handleApiError(error);
        return false;
      },
    );
    return false;
  }

  verifyOtp({required BuildContext context}) async {
    var controller = Get.find<AuthController>();
    await SmsAutoFill().listenForCode();
    await BaseClient.safeApiCall(
      data: {
        "email": controller.emailTextEditingController.text,
        "otp": controller.otpController.text
      },
      ApiUrl.verifyOtp,
      RequestType.post,
      onLoading: () {
        controller.isLoading.value = true;
      },
      onSuccess: (res) {
        if (res.statusCode == 200) {
          controller.isLoading.value = false;
          TokenModel tokenModel = TokenModel.fromJson(res.data);
          MySharedPref.setSecurityToken(tokenModel.token!);

          MySharedPref.setHasAccessToMediaHub(tokenModel.hasAccessToMediaHub!);

          Get.off(() => const HomePage());
        } else {}
      },
      onError: (error) {
        controller.isLoading.value = false;
        BaseClient.handleApiError(error);
      },
    );
  }
}//m@aone.sa
