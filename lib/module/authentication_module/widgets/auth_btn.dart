import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthBtn extends StatelessWidget {
  final String btnText;
  final Color btnColor;
  final Color textColor;
  final double btnBorderRadius;
  final double btnHeight;
  const AuthBtn(
      {super.key,
      required this.btnText,
      required this.btnColor,
      required this.btnBorderRadius,
      required this.textColor,
      required this.btnHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: btnHeight,
      decoration: ShapeDecoration(
        color: btnColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(btnBorderRadius)),
      ),
      child: Center(
        child: Text(
          btnText,
          style: TextStyle(
              color: textColor, fontSize: 16.sp, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
