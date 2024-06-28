import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/modules/auth/logic/auth_controller.dart';
import 'package:getx_skeleton/modules/auth/view/widgets/authntication_model_sheets.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class WaltBottomSheet extends StatefulWidget {
  const WaltBottomSheet({super.key});

  @override
  State<WaltBottomSheet> createState() => _WaltBottomSheetState();
}

class _WaltBottomSheetState extends State<WaltBottomSheet>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return WoltModalSheet(
      showDragHandle: false,
      useSafeArea: false,
      animationController: AnimationController(vsync: this),
      route:
          WoltModalSheetRoute(pageListBuilderNotifier: ValueNotifier((context) {
        return [
          AuthnticationModelSheets.sign(context, textTheme),
          AuthnticationModelSheets.signIn(context, textTheme),
          AuthnticationModelSheets.signup(context, textTheme),
          AuthnticationModelSheets.confirmationCode(context, textTheme)
        ];
      })),
      decorator: (p0) {
        return p0;
      },
      enableDrag: false,
      onModalDismissedWithBarrierTap: () {},
      modalTypeBuilder: (context) {
        return WoltModalType.bottomSheet;
      },
      maxDialogWidth: 560,
      minDialogWidth: 400,
      minPageHeight: 0.0,
      maxPageHeight: .65,
      onModalDismissedWithDrag: () {},
      pageListBuilderNotifier: ValueNotifier(
        (context) {
          return [
            AuthnticationModelSheets.sign(context, textTheme),
            AuthnticationModelSheets.signIn(context, textTheme),
            AuthnticationModelSheets.signup(context, textTheme),
            AuthnticationModelSheets.confirmationCode(context, textTheme)
          ];
        },
      ),
      pageIndexNotifier: Get.find<AuthController>().pageIndexNotifier.value,
    );
  }
}
