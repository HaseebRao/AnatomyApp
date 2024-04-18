import 'package:anatomy/module/authentication_module/set_profile_view/set_profile_controller/set_profile_controller.dart';
import 'package:get/get.dart';

class SetProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SetProfileController());
  }
}
