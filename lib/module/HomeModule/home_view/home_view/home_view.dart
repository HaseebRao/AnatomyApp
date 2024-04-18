import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/app_colors.dart';
import '../home_controller/home_view_controller.dart';

class HomePageView extends GetView<HomeViewController> {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteTextColor,
      child: Center(
        child: ElevatedButton(
          onPressed: controller.toggleDrawer,
          child: const Text("Toggle Drawer"),
        ),
      ),
    );
  }
}
