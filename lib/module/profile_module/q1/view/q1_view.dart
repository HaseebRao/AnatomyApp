import 'package:anatomy/module/profile_module/q1/controller/q1_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text_styles.dart';
class Q1View extends GetView<Q1Controller> {
  get itemBuilder => null;
  final Q1Controller controller = Get.put(Q1Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgThemeColor,
      body: Padding(
        padding: EdgeInsets.only(top: 150.h, left: 13.w, right: 13.w),
        child: Column(
          children: [
            SizedBox(
              height: 500.h,
              width: 380.w,
              child: Stack(children: [
                GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 40,
                      mainAxisSpacing: 40,
                      childAspectRatio: 1.0,
                    ),
                    itemCount: controller.colors.length,
                    itemBuilder: (BuildContext context, int index) {
                      final item = controller.items[index];
                      return GestureDetector(
                        onTap: () {
                          controller.changeColor(index);
                        },
                        child: Container(
                          height: 28.h,
                          width: 80.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Stack(
                            children: [
                              Center(
                                child: GestureDetector(
                                  onTap: () {
                                    controller.changeColor(index);
                                  },
                                  child: Obx(() {
                                    return Container(
                                      width: 133.w,
                                      height: 153,
                                      decoration: BoxDecoration(
                                        color: AppColors.btnGreyColor,
                                        borderRadius: BorderRadius.circular(9),
                                        border: Border.all(
                                          color: controller.tappedIndex.value ==
                                                  index
                                              ? Color(controller.colors[index])
                                              : Colors.grey,
                                          width: 2.1,
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 60.h,
                                            width: 85.w,
                                            decoration: BoxDecoration(
                                            ),
                                            child:  Center(child: SvgPicture.asset( item.imagePath,)),
                                          )
                                        ],
                                      ),
                                    );
                                  }),
                                ),
                              ),
                              Positioned(
                                top: 93.h,
                                child: GestureDetector(
                                  onTap: () {
                                    controller.changeColor(index);
                                  },
                                  child: Obx(() {
                                    return Container(
                                      height: 32.h,
                                      width: 150.w,
                                      decoration: BoxDecoration(
                                        color: controller.tappedIndex.value ==
                                                index
                                            ? Color(controller.colors[index])
                                            : Colors.transparent,
                                      ),
                                      child: Center(
                                        child: Text(
                                          item.text,
                                          style: TextStyle(
                                            fontSize: 12.8.sp,
                                            fontFamily:
                                                AppTextStyles.fontFamily,
                                            color: AppColors.whiteTextColor,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
