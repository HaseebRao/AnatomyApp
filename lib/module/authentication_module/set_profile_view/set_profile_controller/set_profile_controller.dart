import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class SetProfileController extends GetxController {
  RxString imagePath = ''.obs;

  Future<void> pickFromGallery() async {
    final picker = ImagePicker();
    try {
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        imagePath.value = image.path;
      }
    } catch (e) {
      print('Error picking image from gallery: $e');
    }
  }
}
