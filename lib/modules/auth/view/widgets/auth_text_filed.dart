import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getx_skeleton/core/theme/my_styles.dart';

class AuthTextFiled extends StatelessWidget {
  const AuthTextFiled({
    Key? key,
    required this.textFiledHeader,
    required this.controller,
    this.validator,
  }) : super(key: key);

  final String textFiledHeader;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            33.horizontalSpace,
            Text(textFiledHeader, style: MyStyles.font20w300()),
          ],
        ),
        10.verticalSpace,
        SizedBox(
          width: 333.w,
          height: 48.h,
          child: TextFormField(
            key: Key(textFiledHeader),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: validator,
            controller: controller,
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
              ),
              errorStyle: TextStyle(
                  color: Colors.red, height: 0, overflow: TextOverflow.fade),
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
        ),
      ],
    );
  }
}
