import 'package:get/get.dart';
class MaleController extends GetxController{
  final showAnswer = List<bool>.filled(4, false).obs;
  void toggleAnswer(int index) {
    showAnswer[index] = !showAnswer[index];
  }
}