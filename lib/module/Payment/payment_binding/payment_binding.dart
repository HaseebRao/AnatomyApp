import 'package:get/get.dart';

import '../payment_offers_view/payment_controller/payment_controller.dart';

class PaymentBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentController());
  }
}
