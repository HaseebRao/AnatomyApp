import 'package:anatomy/module/profilepage_module/profile_screen/view/profile_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';





class HelpPageController extends GetxController{

  final showAnswer = List<bool>.filled(4, false).obs;

  void toggleAnswer(int index) {
    showAnswer[index] = !showAnswer[index];
  }
}