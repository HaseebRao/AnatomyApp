import 'package:anatomy/module/HomeModule/Widgets/screen1.dart';
import 'package:anatomy/module/HomeModule/Widgets/screen2.dart';
import 'package:anatomy/module/HomeModule/Widgets/screen3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_view/home_controller/home_view_controller.dart';

class HomeDrawerMenuScreen extends GetView<HomeViewController> {
  const HomeDrawerMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 1, 68, 122),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildMenuItem("Screen 1", () {
            // Navigate to Screen 1
            Get.off(Screen1());
          }),
          _buildMenuItem("Screen 2", () {
            // Navigate to Screen 2
            Get.off(Screen2());
          }),
          _buildMenuItem("Screen 3", () {
            // Navigate to Screen 3
            Get.off(Screen3());
          }),
        ],
      ),
    );
  }

  Widget _buildMenuItem(String title, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
