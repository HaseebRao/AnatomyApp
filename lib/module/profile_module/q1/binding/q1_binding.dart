import 'package:anatomy/module/profile_module/q1/controller/q1_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class Q1Binding implements Bindings{
  @override
  void dependencies() {
  Get.lazyPut(() =>Q1Controller());
  }
}
