import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

import '../home_view/home_controller/home_view_controller.dart';
import '../home_view/home_view/home_view.dart';
import 'home_drawer_menu.dart';

class HomePageDrawer extends GetView<HomeViewController> {
  const HomePageDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 68, 122),
      body: GetBuilder<HomeViewController>(
        builder: (_) => ZoomDrawer(
          controller: _.zoomDrawerController,
          menuScreen: const HomeDrawerMenuScreen(),
          mainScreen: const HomePageView(),
          borderRadius: 24.0,
          showShadow: true,
          angle: 2.0,
          drawerShadowsBackgroundColor: Colors.blue,
          slideWidth: MediaQuery.of(context).size.width * 0.65,
        ),
      ),
    );
  }
}
