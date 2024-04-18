import 'package:anatomy/module/authentication_module/SignInView/sign_in_Binding/sign_in_binding.dart';
import 'package:anatomy/module/authentication_module/SignInView/sign_in_view/sign_in_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../common/app_colors.dart';
import '../Widgets/bottom_sheet.dart';
import '../Widgets/text_form_field.dart';
import '../forgot_password_controller/forgot_password_controller.dart';

class ForgotPasswordPage extends GetView<ForgotPasswordController> {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: EdgeInsets.only(top: 70.h, left: 35.w, right: 35.w),
      child: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: Text(
              'Forgot my password',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.blackTextColor,
                fontSize: 18.sp,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          SizedBox(
            height: 60.h,
            child: PasswordTextField(
              controller: controller.emailController,
              maxLine: 2,
              text: 'Enter your email address',
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            'New Password',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.blackTextColor,
              fontSize: 12.sp,
            ),
          ),
          SizedBox(height: 5.h),
          SizedBox(
            height: 40.h,
            child: Obx(() => PasswordTextField(
                maxLine: 1,
                obscureText: controller.isNewPasswordVisible.value,
                controller: controller.newPasswordController,
                text: 'Enter your new password',
                prefixIcon: Icon(
                  Icons.lock,
                  size: 20.h,
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    controller.toggleNewPasswordVisibility();
                  },
                  child: Icon(
                    controller.isNewPasswordVisible.value
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    color: AppColors.blackTextColor,
                    size: 20.h,
                  ),
                ))),
          ),
          SizedBox(height: 10.h),
          Text(
            'Confirm Password',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.blackTextColor,
              fontSize: 12.sp,
            ),
          ),
          SizedBox(height: 5.h),
          SizedBox(
            height: 40.h,
            child: Obx(() => PasswordTextField(
                maxLine: 1,
                controller: controller.confirmPasswordController,
                obscureText: controller.isConfirmPasswordVisible.value,
                text: 'Confirm your new password',
                prefixIcon: Icon(
                  Icons.lock,
                  size: 20.h,
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    controller.toggleConfirmPasswordVisibility();
                  },
                  child: Icon(
                    controller.isConfirmPasswordVisible.value
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    color: AppColors.blackTextColor,
                    size: 20.h,
                  ),
                ))),
          ),
          SizedBox(height: 50.h),
          InkWell(
            onTap: () {
              Get.bottomSheet(const PasswordBottomSheet());
            },
            child: Container(
              height: 40.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.blueBtnColor,
                borderRadius: BorderRadius.circular(30),
              ),
              alignment: Alignment.center,
              child: Text(
                'Change Password',
                style: TextStyle(
                  color: AppColors.whiteTextColor,
                  fontSize: 14.sp,
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Center(
            child: InkWell(
              onTap: () {
                // Navigate back to the login page
              },
              child: InkWell(
                onTap: () {
                  Get.off(const SignInPage(), binding: SignInBinding());
                },
                child: Text(
                  'Back to Login',
                  style: TextStyle(
                    color: AppColors.blueBtnColor,
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    )));
  }
}
