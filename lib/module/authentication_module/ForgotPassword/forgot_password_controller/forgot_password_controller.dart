import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  RxBool isNewPasswordVisible = false.obs;
  RxBool isConfirmPasswordVisible = false.obs;

  void toggleNewPasswordVisibility() {
    isNewPasswordVisible.value = !isNewPasswordVisible.value;
  }

  void toggleConfirmPasswordVisibility() {
    isConfirmPasswordVisible.value = !isConfirmPasswordVisible.value;
  }

  IconData getVisibilityNewIcon() {
    return isNewPasswordVisible.value ? Icons.visibility_off : Icons.visibility;
  }

  IconData getVisibilityConfirmIcon() {
    return isConfirmPasswordVisible.value
        ? Icons.visibility_off
        : Icons.visibility;
  }
}
