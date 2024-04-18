import 'package:anatomy/module/Questionary_View/questionary_view_controller/questionary_view_controller.dart';
import 'package:get/get.dart';

class QuestionaryBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuestionaryController());
  }
}
