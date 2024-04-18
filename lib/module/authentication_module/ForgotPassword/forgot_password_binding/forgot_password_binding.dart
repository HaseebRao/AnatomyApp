import 'package:anatomy/module/authentication_module/ForgotPassword/forgot_password_controller/forgot_password_controller.dart';
import 'package:get/get.dart';

class ForgotPasswordBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotPasswordController());
  }
}
