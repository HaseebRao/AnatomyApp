import 'package:anatomy/common/app_assets.dart';
import 'package:anatomy/common/app_colors.dart';
import 'package:anatomy/common/app_text_styles.dart';
import 'package:anatomy/module/profile_module/help_screen/controller/help_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../common/app_texts.dart';
class HelpPage extends GetView<HelpPageController> {  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: AppColors.bgThemeColor,
     body: Padding(
       padding:  EdgeInsets.symmetric(horizontal:24.0 ),
       child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           SizedBox(height: 54.h,),
           Row(
             mainAxisAlignment:MainAxisAlignment.spaceBetween ,
             children: [
            SvgPicture.asset(AppAssets.arrowBack),
       Text(
         AppTexts.helptext,
         style:TextStyle(
           fontSize: 22.sp,
           fontFamily: AppTextStyles.fontFamily,
           color:AppColors.themeColor,
           fontWeight: FontWeight.w700,
         ),),
               SizedBox(width:30,),
             ],
           ),
           SizedBox(height:45.h,),
           SizedBox(
             height:500.h,
             width: 390.w,
             child:  ListView.builder(
               itemCount: 4,
               itemBuilder: (BuildContext context, int index) {
                 return Obx(() => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Padding(
                       padding: EdgeInsets.only(bottom: 15.h),
                       child: GestureDetector(
                         onTap: () {
                           controller.toggleAnswer(index);
                         },
                         child: Container(
                           height: 48.h,
                           width: 310.w,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(12),
                             border: Border.all(
                               width: 1,
                               color:AppColors.whiteTextColor.withOpacity(0.4),
                             ),
                           ),
                           child: Row(
                             children: [
                               SizedBox(width: 20.h),
                               Text(
                                 AppTexts.questiontext+ '${index + 1}',
                                 style: TextStyle(
                                   fontSize: 14.sp,
                                   fontFamily: AppTextStyles.fontFamily,
                                   color: AppColors.whiteTextColor,
                                   fontWeight: FontWeight.w400,
                                 ),
                               ),
                               SizedBox(width: 165.h),
                               Icon(
                                 controller.showAnswer[index] ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                                 size: 30,
                                 color: AppColors.whiteTextColor,
                               ),
                             ],
                           ),
                         ),
                       ),
                     ),
                     if (controller.showAnswer[index])
                       Padding(
                         padding:  EdgeInsets.only(bottom: 18.0),
                         child: SizedBox(
                           width: 300.w,
                           child:  Text(
                             AppTexts.dummytext,
                             style: TextStyle(
                               fontSize: 12.2.sp,
                               fontFamily: AppTextStyles.fontFamily,
                               color: AppColors.whiteTextColor,
                               fontWeight: FontWeight.w400,
                             ),),
                         ),
                       )
                   ],
                 ));
               },
             ),
           )
         ],
       ),
     ),
   );
  }
}


