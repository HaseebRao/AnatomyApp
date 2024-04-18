import 'package:anatomy/module/Male/malepage/controller/male_controller.dart';
import 'package:get/get.dart';

class MaleBinding implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => MaleController());
  }

}