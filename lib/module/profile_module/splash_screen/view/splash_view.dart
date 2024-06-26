import 'package:anatomy/common/app_colors.dart';
import 'package:anatomy/module/profile_module/splash_screen/controller/splash_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../common/app_assets.dart';
import '../../../../common/app_text_styles.dart';

class SplashView extends GetView<SplashController> {  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: AppColors.bgThemeColor,
     body: Padding(
       padding: EdgeInsets.symmetric(horizontal: 21.w),
       child: Column(
         children: [
           SizedBox(height: 52.h,),
           Row(
             mainAxisAlignment:MainAxisAlignment.spaceBetween ,
             children: [
               SvgPicture.asset(AppAssets.arrowBack),
               Text(
                 'App Info',
                 style: TextStyle(
                   fontSize: 22.sp,
                   fontFamily: AppTextStyles.fontFamily,
                   color:AppColors.themeColor,
                   fontWeight: FontWeight.w700,
                 ),),
               SizedBox(width:5,),
             ],
           ),
           SizedBox(height: 96.h,),
           SvgPicture.asset(AppAssets.splashImage,
           height: 168.h,
          ),
           SizedBox(height: 12.h,),
           Row(
             mainAxisAlignment:MainAxisAlignment.center ,
             children: [
               Text(
                 'Kumar Anatomy',
                 style: TextStyle(
                   fontSize:32.sp,
                   fontFamily: AppTextStyles.fontFamily,
                   color:AppColors.whiteTextColor,
                   fontWeight: FontWeight.w700,
                 ),),
             ],
           ),
           SizedBox(height: 4.h,),
           Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               // SizedBox(width: 168.w,),
               Container(
                 height: 23.h,
                 width: 105.w,
                 decoration: BoxDecoration(
                   color:AppColors.themeColor,
                   borderRadius: BorderRadius.circular(2),
                 ),

                 child: Center(
                   child: Text(
                     "App Version",
                     style: TextStyle(
                       fontSize:14.2.sp,
                       fontFamily: AppTextStyles.fontFamily,
                       color:AppColors.textBlackColor,
                       fontWeight: FontWeight.w700,
                     ),),
                 ),
               ),
               SizedBox(width: 6.w,),
               Text(
                 "2.0",
                 style: TextStyle(
                   fontSize:15.sp,
                   fontFamily: AppTextStyles.fontFamily,
                   color:AppColors.whiteTextColor,
                   fontWeight: FontWeight.w700,
                 ),),
               SizedBox(width: 20.w,),
             ],
           ),
           SizedBox(height: 30.h,),
           SizedBox(width: 360,
             child: Text(
               textAlign: TextAlign.center,
               "Lorem ipsum dolor sit amet, consectetur adipiscing dolor sit amet elit, sed do eiusmod Lorem ipsum dolor sit amet, consectetur adipiscing dolor sit amet elit, sed do eiusmod",
               style: TextStyle(
                 fontSize:13.sp,
                 fontFamily: AppTextStyles.fontFamily,
                 color:AppColors.whiteTextColor,
                 fontWeight: FontWeight.w400,
               ),),
           )
         ],
       ),
     ),
   );
  }
}
