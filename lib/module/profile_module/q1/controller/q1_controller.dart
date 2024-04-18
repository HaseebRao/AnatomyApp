import 'package:get/get.dart';

class Q1Controller extends GetxController{
// Define a RxList of colors
  RxList<int> colors = [0xFFFBBA6F, 0xFFFBBA6F, 0xFFFBBA6F, 0xFFFBBA6F,].obs;
  // Define a variable to track tapped container index
  RxInt tappedIndex = RxInt(-1);

  // Method to change color on tap
  void changeColor(int index) {
    tappedIndex.value = index;
  }

  final List<GridItem> items = [
    GridItem(text: 'Nursing', imagePath: 'assets/icons/healthicons_nurse.svg'),
    GridItem(text: 'Medicine', imagePath: 'assets/icons/kapcool.svg'),
    GridItem(text: 'Physical therapy', imagePath: 'assets/icons/mans.svg'),
    GridItem(text: 'Dentistry', imagePath: 'assets/icons/teeth.svg'),
  ];

}

class GridItem {
  final String text;
  final String imagePath;

  GridItem({required this.text, required this.imagePath});
}


