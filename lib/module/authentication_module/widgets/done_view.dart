import 'package:anatomy/common/app_colors.dart';
import 'package:anatomy/common/app_text_styles.dart';
import 'package:anatomy/module/authentication_module/widgets/auth_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/app_texts.dart';

class DoneView extends StatelessWidget {
  final String titleText;
  final String subTitle;
  final String descriptionText;
  final Function onPressed;
  const DoneView(
      {super.key,
      required this.titleText,
      required this.subTitle,
      required this.descriptionText,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackTextColor,
      body: Padding(
        padding:
            EdgeInsets.only(top: 90.h, left: 35.w, right: 35.w, bottom: 50.h),
        child: Column(children: [
          Text(
            titleText,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.whiteTextColor,
              fontSize: 24.sp,
              fontFamily: AppTextStyles.fontFamily,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            width: 205,
            child: Text(
              subTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.sp,
                fontFamily: AppTextStyles.fontFamily,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Container(
            height: 150.h,
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: AppColors.whiteTextColor),
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Icon(
                Icons.done,
                color: AppColors.themeColor,
                size: 150,
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          SizedBox(
            width: 275,
            child: Text(
              descriptionText,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.sp,
                fontFamily: AppTextStyles.fontFamily,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 20.h,
            ),
          ),
          GestureDetector(
            onTap: () => onPressed(),
            child: AuthBtn(
                btnText: AppTexts.nextText,
                btnColor: AppColors.btnGreyColor,
                btnBorderRadius: 8,
                textColor: AppColors.whiteTextColor,
                btnHeight: 45.h),
          )
        ]),
      ),
    );
  }
}
