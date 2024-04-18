import 'dart:io';

import 'package:anatomy/module/authentication_module/set_profile_view/set_profile_controller/set_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_texts.dart';
import '../../../../common/app_text_styles.dart';
import '../../SignUpView/sign_up_binding/sign_up_binding.dart';
import '../../SignUpView/sign_up_view/sign_up_view.dart';
import '../../widgets/auth_btn.dart';

class SetProfileImagePage extends GetView<SetProfileController> {
  const SetProfileImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgThemeColor,
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 130.h, left: 30.w, right: 30.w),
          child: Column(
            children: [
              Text(
                AppTexts.chooseProfileText,
                textAlign: TextAlign.center,
                style: AppTextStyles.weightEight(
                  context: context,
                  color: AppColors.themeColor,
                  fontSize: 24,
                  height: 0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Stack(children: [
                Center(
                  child: SizedBox(
                    height: 155.h,
                    width: 155.h,
                  ),
                ),
                Obx(
                  () => Center(
                    child: ClipOval(
                      child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          width: 155.h,
                          height: 155.h,
                          child: controller.imagePath.isNotEmpty
                              ? Image.file(
                                  File(controller.imagePath.value),
                                  fit: BoxFit.cover,
                                )
                              : Container(
                                  height: 180.h,
                                  width: 180.w,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2, color: Colors.white),
                                    shape: BoxShape.circle,
                                    //color: Colors.blue
                                  ),
                                  child: Icon(
                                    Icons.person_outlined,
                                    size: 158,
                                    color: Colors.white,
                                  ),
                                )
                          // : SvgPicture.asset(
                          //     AppAssets.profile,
                          //     fit: BoxFit.cover,
                          //     height: 100.h,
                          //     width: 100.w,
                          //   ),
                          ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Positioned(
                  top: 110.h,
                  left: 175.h,
                  child: InkWell(
                    onTap: () {
                      controller.pickFromGallery();
                    },
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.cameraShodowColor,
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: const Icon(
                        Icons.camera_alt_rounded,
                        size: 20,
                        color: AppColors.bgThemeColor,
                      ),
                    ),
                  ),
                ),
              ]),
              const SizedBox(
                height: 100,
              ),
              GestureDetector(
                onTap: () {
                  Get.off(const SignUpPage(), binding: SignUpBinding());
                },
                child: AuthBtn(
                  btnText: AppTexts.createAccountText,
                  btnColor: AppColors.btnGreyColor,
                  btnBorderRadius: 8,
                  textColor: AppColors.whiteTextColor,
                  btnHeight: 45.h,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
