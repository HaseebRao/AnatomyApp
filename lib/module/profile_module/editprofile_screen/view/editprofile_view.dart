import 'dart:io';
import 'package:anatomy/common/app_assets.dart';
import 'package:anatomy/common/app_colors.dart';
import 'package:anatomy/common/app_text_styles.dart';
import 'package:anatomy/module/profile_module/editprofile_screen/controller/editprofile_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
class EditprofileView extends GetView<EditprofileController> {  @override
  Widget build(BuildContext context) {
 return Scaffold(
   backgroundColor: AppColors.bgThemeColor,
   body: Padding(
     padding:  EdgeInsets.symmetric(horizontal:21.w),
     child: SingleChildScrollView(
       child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           SizedBox(height: 52.h,),
           Row(
             mainAxisAlignment:MainAxisAlignment.spaceBetween ,
             children: [
               SvgPicture.asset(AppAssets.arrowBack),
               Text(
                 'Profile',
                 style: TextStyle(
                   fontSize: 22.sp,
                   fontFamily: AppTextStyles.fontFamily,
                   color:AppColors.themeColor,
                   fontWeight: FontWeight.w700,
                 ),),
               SizedBox(width:7,),
             ],
           ),
           SizedBox(height:15.h,),
           Center(
             child:SizedBox(
               height: 90.h,
               width: 120.w,
               child: Stack(
                 children: [
                   Obx(
                         () => Center(
                       child: Container(
                         width: 93,
                         height: 93,
                         decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           border: Border.all(
                             color: Colors.white,
                             width: 3.0,
                           ),
                           image: controller.imagePath.isNotEmpty ?DecorationImage(
                             image:
                                 FileImage(File(controller.imagePath.toString())),
                             fit: BoxFit.fitWidth,
                           ):DecorationImage(image:   AssetImage('assets/images/mano.png')),
                         ),
                       ),
                     ),
                   ),
                   Positioned(
                     left: 80,
                     top: 55,
                     child: GestureDetector(
                       onTap: () {
                         controller.openGallery();
                       },
                       child: Container(
                         width: 31,
                         height: 31,
                         decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           color: Colors.white,
                         ),
                         child: Icon(
                           Icons.photo_camera,
                           size: 18,
                           color: Colors.black,
                         ),
                       ),
                     ),
                   ),
                 ],
               ),
             ),
           ),
       SizedBox(height: 18.h,),
           Text(
             'Full name',
             style: TextStyle(
               fontSize: 12.sp,
               fontFamily: AppTextStyles.fontFamily,
               color:AppColors.whiteTextColor,
               fontWeight: FontWeight.w400,
             ),),
       SizedBox(height: 12.h,),
       Container(
         height: 48.h,
         width: 310.w,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(12),
           border: Border.all(
             width: 1,
             color:AppColors.whiteTextColor.withOpacity(0.4),
           ),
         ),
       
         child: Center(
           child: TextFormField(
             focusNode: controller.focusNode1,
             textInputAction: TextInputAction.next,
             onFieldSubmitted: (_) {
               FocusScope.of(context).requestFocus(controller.focusNode2);
             },


             style: TextStyle(

               color: Colors.white, // Setting text color to white
               fontFamily: AppTextStyles.fontFamily, // Setting font family
             ),
             decoration: InputDecoration(

               contentPadding: EdgeInsets.only(left:19.w),
               hintText: 'Full Name',
               border: InputBorder.none,
               hintStyle: TextStyle(

                 color: Colors.white54, // Setting hint text color to white with opacity
                 fontFamily: AppTextStyles.fontFamily, // Setting font family for hint text
               ),
             ),
           ),
         ),
       ),
           SizedBox(height: 18.h,),
           Text(
             'Email',
             style: TextStyle(
               fontSize: 12.sp,
               fontFamily: AppTextStyles.fontFamily,
               color:AppColors.whiteTextColor,
               fontWeight: FontWeight.w400,
             ),),
           SizedBox(height: 12.h,),
           Container(
             height: 48.h,
             width: 310.w,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(12),
               border: Border.all(
                 width: 1,
                 color:AppColors.whiteTextColor.withOpacity(0.4),
               ),
             ),
             child: Center(
               child: TextFormField(
                 focusNode: controller.focusNode2,
                 textInputAction: TextInputAction.next,
                 onFieldSubmitted: (_) {
                   FocusScope.of(context).requestFocus(controller.focusNode3);
                 },
                 style: TextStyle(
                   color: Colors.white, // Setting text color to white
                   fontFamily: AppTextStyles.fontFamily, // Setting font family
                 ),
                 decoration: InputDecoration(
                   contentPadding: EdgeInsets.only(left:19.w),
                   hintText: 'Email',
                   border: InputBorder.none,
                   hintStyle: TextStyle(
                     color: Colors.white54, // Setting hint text color to white with opacity
                     fontFamily: AppTextStyles.fontFamily, // Setting font family for hint text
                   ),
                 ),
               ),
             ),
           ),
           SizedBox(height: 18.h,),
           Text(
             'Location',
             style: TextStyle(
               fontSize: 12.sp,
               fontFamily: AppTextStyles.fontFamily,
               color:AppColors.whiteTextColor,
               fontWeight: FontWeight.w400,
             ),),
           SizedBox(height: 12.h,),
           Container(
             height: 48.h,
             width: 310.w,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(12),
               border: Border.all(
                 width: 1,
                 color:AppColors.whiteTextColor.withOpacity(0.4),
               ),
             ),
       
             child: Center(
               child: TextFormField(
                 focusNode: controller.focusNode3,
                 textInputAction: TextInputAction.next,
                 onFieldSubmitted: (_) {
                   FocusScope.of(context).requestFocus(controller.focusNode4);
                 },

                 style: TextStyle(
                   color: Colors.white, // Setting text color to white
                   fontFamily: AppTextStyles.fontFamily, // Setting font family
                 ),
                 decoration: InputDecoration(
                   contentPadding: EdgeInsets.only(left:19.w),
                   hintText: 'Location',
                   border: InputBorder.none,
                   hintStyle: TextStyle(
                     color: Colors.white54, // Setting hint text color to white with opacity
                     fontFamily: AppTextStyles.fontFamily, // Setting font family for hint text
                   ),
                 ),
               ),
             ),
           ),
           SizedBox(height: 18.h,),
           Text(
             'Phone Number',
             style: TextStyle(
               fontSize: 12.sp,
               fontFamily: AppTextStyles.fontFamily,
               color:AppColors.whiteTextColor,
               fontWeight: FontWeight.w400,
             ),),
           SizedBox(height: 12.h,),
           Container(
             height: 48.h,
             width: 310.w,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(12),
               border: Border.all(
                 width: 1,
                 color:AppColors.whiteTextColor.withOpacity(0.4),
               ),
             ),
       
             child: Center(
               child: TextFormField(
                 focusNode: controller.focusNode4,
                 textInputAction: TextInputAction.next,
                 onFieldSubmitted: (_) {
                   FocusScope.of(context).requestFocus(controller.focusNode4);
                 },

                 keyboardType: TextInputType.phone,
                 style: TextStyle(
                   color: Colors.white, // Setting text color to white
                   fontFamily: AppTextStyles.fontFamily, // Setting font family
                 ),
                 decoration: InputDecoration(
                   contentPadding: EdgeInsets.only(left:19.w),
                   hintText: '+91 0000',
                   border: InputBorder.none,
                   hintStyle: TextStyle(
                     color: Colors.white54, // Setting hint text color to white with opacity
                     fontFamily: AppTextStyles.fontFamily, // Setting font family for hint text
                   ),
                 ),
               ),
             ),
           ),
       SizedBox(height: 50.h,),
       Container(
         height: 52.h,
         width: 310.w,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(12),
             color:AppColors.btnGreyColor,
         ),
         child:Center(
           child: Text(
             'Save Changes',
             style: TextStyle(
               fontSize: 13.sp,
               fontFamily: AppTextStyles.fontFamily,
               color:AppColors.whiteTextColor,
               fontWeight: FontWeight.w500,
             ),),
         ),
       ),
         ],
       ),
     ),
   ),
 );
  }
}
