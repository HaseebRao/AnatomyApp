import 'package:anatomy/module/profile_module/Selection/controller/selection_controller.dart';
import 'package:get/get.dart';

class SelectionBinding implements Bindings{
  @override
  void dependencies() {
Get.lazyPut(() => SelectionController());
  }

}