import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_view/home_controller/home_view_controller.dart';

class Screen2 extends GetView<HomeViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 2')),
      body: Center(child: Text('This is Screen 2')),
    );
  }
}
