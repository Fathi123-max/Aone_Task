import 'package:flutter/material.dart';
import 'package:getx_skeleton/core/theme/my_styles.dart';

class AuthButton extends StatelessWidget {
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
    return OutlinedButton(
        onPressed: onPressed,
        child: Text(name ?? 'Sign in',
            textAlign: TextAlign.center, style: MyStyles.font20w700()),
        style: MyStyles.outlineBtnStyle());
  }
}
