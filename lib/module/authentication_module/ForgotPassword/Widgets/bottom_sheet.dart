import 'package:anatomy/common/app_assets.dart';
import 'package:anatomy/common/app_colors.dart';
import 'package:anatomy/common/app_text_styles.dart';
import 'package:anatomy/module/Questionary_View/questionary_view/questionary_view.dart';
import 'package:anatomy/module/Questionary_View/questionary_view_binding/questionary_view_binding.dart';
import 'package:anatomy/module/authentication_module/ForgotPassword/forgot_password_controller/forgot_password_controller.dart';
import 'package:anatomy/module/authentication_module/widgets/auth_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../common/app_texts.dart';

class PasswordBottomSheet extends GetView<ForgotPasswordController> {
  const PasswordBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: 360.w,
      decoration: const BoxDecoration(
          color: AppColors.whiteTextColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: Padding(
        padding: EdgeInsets.only(top: 20.h, left: 35.w, right: 35.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30.w),
              child: SvgPicture.asset(AppAssets.passwordBottomSheetLogo),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              AppTexts.passwordSuccesfullyrestText,
              style: TextStyle(
                color: AppColors.blackTextColor,
                fontSize: 18.sp,
                fontFamily: AppTextStyles.fontFamily,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            SizedBox(
              width: 267,
              child: Text(
                AppTexts.youCanUseNewPasswordText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.borderHintColor,
                  fontSize: 12.sp,
                  fontFamily: AppTextStyles.fontFamily,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            InkWell(
              onTap: () {
                Get.off(const QuestionaryPage(), binding: QuestionaryBinding());
              },
              child: AuthBtn(
                  btnText: AppTexts.loginToMyAccountText,
                  btnColor: AppColors.blueBtnColor,
                  btnBorderRadius: 30,
                  textColor: AppColors.whiteTextColor,
                  btnHeight: 40.h),
            )
          ],
        ),
      ),
    );
  }
}
