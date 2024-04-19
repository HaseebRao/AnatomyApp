import 'package:anatomy/module/profile_module/bookish/controller/hightlight_controller.dart';
import 'package:get/get.dart';

class HightlightBinding implements Bindings{
  @override
  void dependencies() {
 Get.lazyPut(() => HightlightController());
  }
}