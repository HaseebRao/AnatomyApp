import 'package:anatomy/common/app_assets.dart';
import 'package:anatomy/common/app_text_styles.dart';
import 'package:anatomy/module/profile_module/profile_screen/controller/profile_controller.dart';
import 'package:anatomy/module/profilepage_module/profile_screen/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/app_texts.dart';
class ProfileView extends GetView<ProfileController>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: AppColors.bgThemeColor,
     body: Padding(
       padding: EdgeInsets.symmetric(horizontal:24),
       child: Column(
         children: [
           SizedBox(height: 54.h,),
           Row(
             mainAxisAlignment:MainAxisAlignment.spaceBetween ,
             children: [
               SvgPicture.asset(AppAssets.arrowBack),
               Text(
                 AppTexts.profiletext,
                 style: TextStyle(
                   fontSize: 22.sp,
                   fontFamily: AppTextStyles.fontFamily,
                   color:AppColors.themeColor,
                   fontWeight: FontWeight.w700,
                 ),),
               SizedBox(width:20,),
             ],
           ),
           SizedBox(height: 15.h,),
           Row(
             children: [
               Container(
                 width: 74.w,
                 height:74.h,
                 decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   border: Border.all(
                     color: AppColors.BlackColor, // Set border color to red
                     width: 3.0, // Set border width
                   ),
                   image: DecorationImage(
                     image: AssetImage('assets/images/mano.png'),
                     fit: BoxFit.fitWidth,
                   ),
                 ),
               ),
               SizedBox(width: 16,),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(
               AppTexts.elonGatedtext,
                     style: TextStyle(
                       fontSize: 18.sp,
                       fontFamily: AppTextStyles.fontFamily,
                       color:AppColors.whiteTextColor,
                       fontWeight: FontWeight.w600,
                     ),),
                   Text(
                     'elon@gated.com',
                     style: TextStyle(
                       fontSize: 12.sp,
                       fontFamily: AppTextStyles.fontFamily,
                       color:AppColors.BlackColor,
                       fontWeight: FontWeight.w400,
                     ),),
                 ],
               )
             ],
           ),
           SizedBox(
             height: 455.h,
             child: ListView.builder(
               itemCount: controller.mobiledata.length,
                 scrollDirection: Axis.vertical,
                 itemBuilder: (context , index){
                return Column(
                children: [
                     Padding(
                       padding:  EdgeInsets.only(bottom: 25.0),
                       child: Row(
                         children: [
                           Icon(
                             controller.mobiledata[index].icon,
                             color:AppColors.whiteTextColor,
                             size: 20.sp,
                           ),
                           SizedBox(width: 12.w,),
                           Text(
                            controller.mobiledata[index].texts,
                             style: TextStyle(
                               fontSize: 14.sp,
                               fontFamily: AppTextStyles.fontFamily,
                               color:AppColors.whiteTextColor,
                               fontWeight: FontWeight.w400,
                             ),),
                           Spacer(),
                           Icon(
                             Icons.arrow_forward_ios,
                             color:AppColors.whiteTextColor,
                             size: 15.sp,
                           ),
                         ],
                       ),
                     ),
                  Padding(
                    padding:  EdgeInsets.only(bottom: 25.0),
                    child: Container(
                      height: 0.4.h,
                      width: 370,
                      color:AppColors.BlackColor,
                    ),
                  )
                  ],
                 );
                 }),
           )
         ],
       ),
     ),
   );
  }

}
class mobile{
  String texts;
  IconData icon;
  mobile({
    required this.texts, required this.icon,
  });
}