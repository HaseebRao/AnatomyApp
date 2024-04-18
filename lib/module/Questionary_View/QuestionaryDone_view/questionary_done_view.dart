import 'package:anatomy/module/Payment/payment_binding/payment_binding.dart';
import 'package:anatomy/module/Payment/payment_view/payment_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/app_colors.dart';
import '../../../common/app_texts.dart';
import '../../authentication_module/widgets/done_view.dart';

class QuestionaryDoneView extends StatelessWidget {
  const QuestionaryDoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.blackTextColor,
        body: DoneView(
          titleText: AppTexts.questionaryDoneTitleText,
          subTitle: AppTexts.questionaryDoneSubTitleText,
          descriptionText: AppTexts.questionaryDoneDescriptionText,
          onPressed: () {
            Get.off(const PaymentView(), binding: PaymentBinding());
          },
        ));
  }
}
