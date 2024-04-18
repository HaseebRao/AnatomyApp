import 'package:anatomy/common/app_colors.dart';
import 'package:anatomy/common/app_text_styles.dart';
import 'package:anatomy/module/Payment/payment_done_view/payment_done_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../payment_offers_view/payment_controller/payment_controller.dart';

class PaymentSelectionBox extends GetView<PaymentController> {
  final int index;
  final String titleText;
  final String subTitle;
  final String priceValue;
  final String priceTitle;

  const PaymentSelectionBox(
    this.index, {
    super.key,
    required this.titleText,
    required this.subTitle,
    required this.priceValue,
    required this.priceTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() => GestureDetector(
          onTap: () {
            controller.changeColor(index);
            Get.off(const PaymentDoneView());
          },
          child: Container(
            height: 70.h,
            decoration: BoxDecoration(
              border: Border.all(
                color: controller.selectedContainerIndex.value == index
                    ? AppColors.themeColor
                    : AppColors.borderHintColor,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: controller.selectedContainerIndex.value == index
                      ? AppColors.whiteTextColor.withOpacity(0.2)
                      : Colors.transparent, // Shadow color
                  spreadRadius: -2, // Spread radius
                  blurRadius: 20, // Blur radius
                  offset: const Offset(0, 3), // Offset of the shadow
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Radio(
                  value: index,
                  groupValue: controller.selectedRadioIndex.value,
                  activeColor: AppColors.whiteTextColor,
                  onChanged: (int? value) => controller.changeRadio(value!),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          titleText,
                          style: TextStyle(
                            color: AppColors.whiteTextColor,
                            fontSize: 16.sp,
                            fontFamily: AppTextStyles.fontFamily,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          subTitle,
                          style: TextStyle(
                            color: AppColors.whiteTextColor,
                            fontSize: 10.sp,
                            fontFamily: AppTextStyles.fontFamily,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Row(
                      children: [
                        Text(
                          '\$$priceValue',
                          style: TextStyle(
                            color: AppColors.whiteTextColor,
                            fontSize: 16.sp,
                            fontFamily: AppTextStyles.fontFamily,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: 5.h,
                        ),
                        Text(
                          priceTitle,
                          style: TextStyle(
                            color: AppColors.whiteTextColor,
                            fontSize: 10.sp,
                            fontFamily: AppTextStyles.fontFamily,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
