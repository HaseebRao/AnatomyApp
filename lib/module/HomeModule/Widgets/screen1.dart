import 'package:anatomy/module/HomeModule/home_view/home_controller/home_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen1 extends GetView<HomeViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 1')),
      body: Center(child: Text('This is Screen 1')),
    );
  }
}
