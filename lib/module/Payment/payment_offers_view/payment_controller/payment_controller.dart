// PaymentController
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentController extends GetxController {
  RxInt selectedContainerIndex = (-1).obs;
  RxInt selectedRadioIndex = (-1).obs;

  // Lists for icons and text
  List<IconData> iconList = [Icons.abc, Icons.abc_rounded, Icons.ac_unit];
  List<String> textList = [
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ',
    'Lorem ipsum dolor sit amet, consectetur adipiscing  dolor sit amet elit, sed do eiusmod ',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod ',
  ];

  void changeColor(int index) {
    selectedContainerIndex.value = index;
    selectedRadioIndex.value = index;
  }

  void changeRadio(int index) {
    selectedContainerIndex.value = index;
    selectedRadioIndex.value = index;
  }
}
