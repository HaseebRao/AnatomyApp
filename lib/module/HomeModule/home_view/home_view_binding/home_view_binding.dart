import 'package:get/get.dart';

import '../home_controller/home_view_controller.dart';

class MyPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeViewController());
  }
}
