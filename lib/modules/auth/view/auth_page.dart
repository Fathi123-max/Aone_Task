import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/modules/auth/view/widgets/walt_bottom_sheet.dart';

import '../logic/auth_controller.dart';

class AuthPage extends GetView<AuthController> {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image(
          width: Get.width,
          image: const AssetImage('assets/images/auth_background.png'),
          fit: BoxFit.cover),
      const WaltBottomSheet()
    ]);
  }
}
