import 'package:anatomy/common/app_colors.dart';
import 'package:anatomy/module/profile_module/bookish/controller/hightlight_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../common/app_text_styles.dart';
class HightLightView extends GetView<HightlightController> {  @override
  Widget build(BuildContext context) {
  return
   Scaffold(
     backgroundColor: AppColors.themeColor ,
     body: Padding(
       padding:  EdgeInsets.symmetric(horizontal: 8.w),
       child: Column(
         children: [
           SizedBox(height: 52.h,),
           Padding(
             padding:  EdgeInsets.only(left: 9.w),
             child: Row(
               mainAxisAlignment:MainAxisAlignment.spaceBetween,
               children: [
                 Icon(
                   Icons.arrow_back,
                   size: 28,
                   color: Colors.black,
                 ),
                 Text(
                   'Highlights',
                   style: TextStyle(
                     fontSize: 22.sp,
                     fontFamily: AppTextStyles.fontFamily,
                     color: Colors.black,
                     fontWeight: FontWeight.w800,
                   ),),
                 Container(
                   height: 4,
                   width: 10,
                 )
               ],
             ),
           ),
           SizedBox(
             height: 30.h,
           ),
           Padding(
             padding:   EdgeInsets.symmetric(horizontal: 7.w),
             child: SizedBox(
               width: 375,
               child:
               Center(
                 child: Text(
                   'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     fontSize: 11.5.sp,
                     fontFamily: AppTextStyles.fontFamily,
                     color: Colors.black,
                     fontWeight: FontWeight.w600,
                   ),),
               ),
             ),
           ),
           SizedBox(
             height: 520.h,
             child: ListView.builder(
                 itemCount: 3,
                 scrollDirection: Axis.vertical,
                 itemBuilder: (context , index){
                   return Column(
                     children: [
                       Padding(
                         padding:  EdgeInsets.only(bottom: 15.0),
                         child: SizedBox(
                           height: 140,
                           child: Stack(
                             children: [
                               Container(
                                 height: 125.h,
                                 width: 320.w,
                                 // color: Colors.red,
                                 child: Padding(
                                   padding:  EdgeInsets.only(top: 19.h),
                                   child: Container(
                                     height: 92.h,
                                     width: 310.w,
                                     decoration: BoxDecoration(
                                     color: Colors.white,
                                       borderRadius: BorderRadius.circular(15)
                                     ),

                                   ),
                                 ),
                               ),
                               Positioned(
                                 left: 27.w,
                                 top: 6.h,
                                 child: Container(
                                   height: 90.h,
                                   width:  70.w,
                                   decoration: BoxDecoration(
                                     color: Colors.indigo,
                                     borderRadius: BorderRadius.circular(4),
                                     boxShadow: [
                                       BoxShadow(
                                         color: Colors.grey.withOpacity(0.6),
                                         spreadRadius: 5,
                                         blurRadius: 7,
                                         offset: Offset(0, 3), // changes position of shadow
                                       ),
                                     ],
                                   ),
                                 ),
                               ),
                               Positioned(
                                 left: 117.w,top: 30.h,
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text(
                                       'Then she was gone',
                                       style: TextStyle(
                                         fontSize: 12.sp,
                                         fontFamily: AppTextStyles.fontFamily,
                                         color: Colors.black,
                                         fontWeight: FontWeight.w600,
                                       ),),
                                     SizedBox(height: 1.h,),
                                     Row(
                                       children: [
                                         Icon(
                                           Icons.draw_outlined,
                                           size: 14,
                                           color: Colors.black,
                                         ),
                                         SizedBox(width: 2.w,),
                                         Text(
                                           'Willian Ming',
                                           style: TextStyle(
                                             fontSize: 9.sp,
                                             fontFamily: AppTextStyles.fontFamily,
                                             color: Colors.black,
                                             fontWeight: FontWeight.w400,
                                           ),),
                                       ],
                                     ),
                                     SizedBox(height: 23,),
                                     Text(
                                       '10 Dec, 2024',
                                       style: TextStyle(
                                         fontSize: 10.sp,
                                         fontFamily: AppTextStyles.fontFamily,
                                         color: Colors.black,
                                         fontWeight: FontWeight.w600,
                                       ),),
                                   ],
                                 ),
                               ),
                             ],
                           ),
                         ),
                       )
                     ],
                   );
                 }),
           ),
         ],
       ),
     ),
   );
  }
}
