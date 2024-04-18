import 'package:anatomy/module/authentication_module/widgets/done_view.dart';
import 'package:flutter/material.dart';
import '../../../common/app_colors.dart';
import '../../../common/app_texts.dart';

class PaymentDoneView extends StatelessWidget {
  const PaymentDoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.blackTextColor,
        body: DoneView(
          titleText: AppTexts.paymentDoneTitleText,
          subTitle: AppTexts.paymentDoneSubTitleText,
          descriptionText: AppTexts.paymentDoneDEscriptionText,
          onPressed: () {
            //Go to next Navigation
          },
        ));
  }
}
