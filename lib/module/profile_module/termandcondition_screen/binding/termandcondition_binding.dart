import 'package:anatomy/module/profile_module/termandcondition_screen/controller/termandcondition_controller.dart';
import 'package:get/get.dart';

class TermandconditionBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => TermandconditionController());
  }

}
