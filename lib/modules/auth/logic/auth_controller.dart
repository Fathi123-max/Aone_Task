import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/modules/auth/data/repo.dart';

class AuthController extends GetxController {
  AuthRepo authRepo = AuthRepo();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController fullNameTextEditingController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  var pageIndexNotifier = ValueNotifier(0).obs;

  BuildContext? waltContext;

  RxBool isLoading = RxBool(false);
}
