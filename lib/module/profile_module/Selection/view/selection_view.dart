import 'package:anatomy/module/profile_module/Selection/controller/selection_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
class SelectionView extends GetView<SelectionController> {
  get isMenuBarVisible => null;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("GetX Example"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // "+" icon screen ke left side par
            Expanded(
              child: Container(),
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                // Icon par click karne par snackbar dikhaya jaye
                Get.snackbar(
                  "Container",
                  "",
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.blue,
                  colorText: Colors.white,
                  snackStyle: SnackStyle.FLOATING,
                  messageText: Container(
                    width: 200,
                    height: 200,
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        "Container",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
