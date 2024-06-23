import 'package:get/get.dart';

class WordNoteController extends GetxController {
  final isEdit = Rx<bool>(false);

  showEdit() {
    isEdit.value = true;
  }

  showNote() {
    isEdit.value = false;
  }
}
