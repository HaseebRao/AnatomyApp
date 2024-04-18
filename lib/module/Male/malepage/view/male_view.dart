import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:anatomy/module/Male/malepage/controller/male_controller.dart';
import '../../../../common/app_colors.dart';
class MaleView extends GetView<MaleController> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.bgThemeColor,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal:24.0 ),
        child: Column(
          children: [
            SizedBox(height: 54.h,),
            SizedBox(
              height:630.h,
              width: 70.w,
              child:  ListView.builder(
                itemCount: 1,
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
                          child: Icon(
                            Icons.apps,
                            size: 60,
                            color: AppColors.whiteTextColor,
                          ),
                        ),
                      ),
                      if (controller.showAnswer[index])
                        SizedBox(
                          width: 300.w,
                          child: Container(
                            height:1200.h,
                            width: 20.w,
                            color: AppColors.whiteTextColor,
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