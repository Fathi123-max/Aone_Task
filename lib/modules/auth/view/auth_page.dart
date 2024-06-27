import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

import '../logic/auth_controller.dart';

class AuthPage extends GetView<AuthController> {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        //background photo from assets
        body: Image(
            width: Get.width,
            image: const AssetImage('assets/images/auth_background.png'),
            fit: BoxFit.cover),
      ),
      Align(
          alignment: Alignment.center,
          child: ElevatedButton(
              onPressed: () {
                SchedulerBinding.instance.addPostFrameCallback((_) {
                  WoltModalSheet.show<void>(
                    context: Get.context!,
                    pageListBuilder: (modalSheetContext) {
                      final textTheme = Theme.of(Get.context!).textTheme;
                      return [
                        controller.confirmationCode(
                            modalSheetContext, textTheme),
                        controller.sign(modalSheetContext, textTheme),
                        controller.signIn(modalSheetContext, textTheme),
                        controller.signup(modalSheetContext, textTheme),
                      ];
                    },
                    modalTypeBuilder: (context) {
                      return WoltModalType.bottomSheet;
                    },
                    onModalDismissedWithBarrierTap: () {
                      debugPrint('Closed modal sheet with barrier tap');
                      Navigator.of(Get.context!).pop();
                    },
                    maxDialogWidth: 560,
                    minDialogWidth: 400,
                    minPageHeight: 0.0,
                    maxPageHeight: .65,
                  );
                });
              },
              child: Text('Login')))
    ]);
  }
}
