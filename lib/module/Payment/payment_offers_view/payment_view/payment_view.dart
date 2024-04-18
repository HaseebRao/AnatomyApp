// PaymentView
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_text_styles.dart';
import '../../../../common/app_texts.dart';
import '../../Widgets/payment_selection_box.dart';
import '../payment_controller/payment_controller.dart';

class PaymentView extends GetView<PaymentController> {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackTextColor,
      body: Stack(children: [
        Padding(
          padding: EdgeInsets.only(
            top: 30.h,
            left: 35.w,
            right: 35.w,
            bottom: 50.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.whiteTextColor,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.arrow_back,
                      color: AppColors.blackTextColor,
                      size: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: 283.w,
                child: Text(
                  AppTexts.achieveGoalsText,
                  style: TextStyle(
                    color: AppColors.themeColor,
                    fontSize: 26.sp,
                    fontFamily: AppTextStyles.fontFamily,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 160.h,
                width: 300.w,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: controller.iconList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                        width: 260.w,
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: 45.h,
                                    decoration: BoxDecoration(
                                        color: AppColors.whiteTextColor
                                            .withOpacity(0.5),
                                        border: Border.all(
                                            width: 1.w,
                                            color: AppColors.whiteTextColor),
                                        shape: BoxShape.circle),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(controller.iconList[index]),
                                    )),
                                SizedBox(
                                  width: 10.w,
                                ),
                                SizedBox(
                                  width: 235,
                                  height: 50.h,
                                  child: Text(
                                    controller.textList[index],
                                    style: TextStyle(
                                      color: AppColors.whiteTextColor,
                                      fontSize: 12.sp,
                                      fontFamily: AppTextStyles.fontFamily,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            )
                          ],
                        ));
                  },
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'Pick a Subscription',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.sp,
                  fontFamily: AppTextStyles.fontFamily,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10.h),
              InkWell(
                onTap: () {
                  controller.changeRadio(0);
                },
                child: const PaymentSelectionBox(0,
                    titleText: 'Life Time',
                    subTitle: '(saving offer)',
                    priceValue: '99.99',
                    priceTitle: 'one time payment for life time'),
              ),
              SizedBox(height: 15.h),
              InkWell(
                onTap: () {
                  controller.changeRadio(1);
                },
                child: const PaymentSelectionBox(1,
                    titleText: 'Annual Offer ',
                    subTitle: '(saving offer)',
                    priceValue: '29.99',
                    priceTitle: 'per Annual '),
              ),
              SizedBox(height: 15.h),
              InkWell(
                onTap: () {
                  controller.changeRadio(2);
                },
                child: const PaymentSelectionBox(2,
                    titleText: 'Monthly Offer',
                    subTitle: '(saving offer)',
                    priceValue: '9.99',
                    priceTitle: 'per month'),
              ),
            ],
          ),
        ),
        Positioned(
          left: 255.w,
          top: 370.h,
          child: Transform.rotate(
            angle: 0.60,
            child: Container(
              width: 90.w,
              height: 25.h,
              decoration: const BoxDecoration(
                  color: AppColors.whiteTextColor,
                  borderRadius: BorderRadius.all(Radius.circular(4))),
              child: Center(
                child: Text(
                  'Saved \$2.99',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10.sp,
                    fontFamily: AppTextStyles.fontFamily,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
