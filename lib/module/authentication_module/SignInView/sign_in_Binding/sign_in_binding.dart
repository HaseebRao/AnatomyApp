import 'package:get/get.dart';

import '../sign_in_controller/sign_in_controller.dart';

class SignInBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInController());
  }
}
