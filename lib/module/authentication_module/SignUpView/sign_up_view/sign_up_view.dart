import 'package:anatomy/common/app_colors.dart';
import 'package:anatomy/common/app_text_styles.dart';
import 'package:anatomy/common/app_texts.dart';
import 'package:anatomy/module/Questionary_View/Questionary_view_binding/questionary_view_binding.dart';
import 'package:anatomy/module/Questionary_View/questionary_view/questionary_view.dart';
import 'package:anatomy/module/authentication_module/SignInView/sign_in_Binding/sign_in_binding.dart';
import 'package:anatomy/module/authentication_module/SignInView/sign_in_view/sign_in_view.dart';
import 'package:anatomy/module/authentication_module/SignUpView/sign_up_controller/sign_up_controller.dart';
import 'package:anatomy/module/authentication_module/SignUpView/widgets/my_textform_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../common/app_assets.dart';
import '../../widgets/auth_btn.dart';

class SignUpPage extends GetView<SignUpController> {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgThemeColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 110.h, left: 35.w, right: 35.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  AppTexts.createAnAccountText,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.weightEight(
                    context: context,
                    color: AppColors.themeColor,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.72,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                AppTexts.nameText,
                style: TextStyle(
                  color: AppColors.whiteTextColor,
                  fontSize: 16.sp,
                  fontFamily: AppTextStyles.fontFamily,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              SizedBox(
                height: 40.h,
                child: MyTextFormField(
                  controller: controller.nameController,
                  text: AppTexts.enterNameText,
                  suffixIcon: const Icon(
                    Icons.visibility,
                    color: Colors.transparent,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                AppTexts.emailText,
                style: TextStyle(
                  color: AppColors.whiteTextColor,
                  fontSize: 16.sp,
                  fontFamily: AppTextStyles.fontFamily,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              SizedBox(
                height: 40.h,
                child: MyTextFormField(
                  controller: controller.emailController,
                  text: AppTexts.enterEmailText,
                  suffixIcon: const Icon(
                    Icons.visibility,
                    color: Colors.transparent,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                AppTexts.passwordText,
                style: TextStyle(
                  color: AppColors.whiteTextColor,
                  fontSize: 16.sp,
                  fontFamily: AppTextStyles.fontFamily,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Obx(() {
                return MyTextFormField(
                  obscureText: controller.isPasswordVisible.value,
                  controller: controller.passwordController,
                  text: AppTexts.enterPasswordText,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      controller.togglePasswordVisibility();
                    },
                    child: Icon(
                      controller.isPasswordVisible.value
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: AppColors.borderHintColor,
                    ),
                  ),
                );
              }),
              SizedBox(
                height: 5.h,
              ),
              Text(
                AppTexts.passwordHelperText,
                style: TextStyle(
                  color: AppColors.whiteTextColor,
                  fontSize: 10.sp,
                  fontFamily: AppTextStyles.fontFamily,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                  onTap: () {
                    Get.off(const QuestionaryPage(),
                        binding: QuestionaryBinding());
                  },
                  child: AuthBtn(
                    btnText: AppTexts.signUpText,
                    btnColor: AppColors.btnGreyColor,
                    btnBorderRadius: 8,
                    textColor: AppColors.whiteTextColor,
                    btnHeight: 45.h,
                  )),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Divider(
                      height: 10.h,
                      thickness: 0.5,
                      color: AppColors.borderHintColor,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.h),
                    child: Text(
                      AppTexts.orText,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.borderHintColor,
                        fontSize: 16.sp,
                        fontFamily: AppTextStyles.fontFamily,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      height: 20.h,
                      thickness: 0.5,
                      color: AppColors.borderHintColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                onTap: () {
                  //Handle Funtionality here
                },
                child: Container(
                  height: 40.h,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: 0.70.w, color: AppColors.borderHintColor),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(AppAssets.googleLogo),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        AppTexts.continueWithGoogleText,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontFamily: AppTextStyles.fontFamily,
                          fontWeight: FontWeight.w400,
                          height: 0.07.h,
                          letterSpacing: 0.28,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              GestureDetector(
                onTap: () {
                  //handle Functionality here
                },
                child: Container(
                  height: 40.h,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: 0.70.w, color: AppColors.borderHintColor),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(AppAssets.facebookLogo),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        AppTexts.continueWithFacebookText,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontFamily: AppTextStyles.fontFamily,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.28,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                    text: AppTexts.alreadyHaveAccountText,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                      fontFamily: AppTextStyles.fontFamily,
                      fontWeight: FontWeight.w400,
                      height: 0.10,
                      letterSpacing: 0.24,
                    ),
                  ),
                  const TextSpan(text: " "),
                  TextSpan(
                    text: AppTexts.signInText,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Get.off(const SignInPage(), binding: SignInBinding());
                      },
                    style: TextStyle(
                      color: AppColors.whiteTextColor,
                      fontSize: 14.sp,
                      fontFamily: AppTextStyles.fontFamily,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.28,
                    ),
                  ),
                ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
