import 'package:flutter_application_1/common/note/api.dart';
import 'package:flutter_application_1/common/note/controller.dart';
import 'package:get/get.dart';

class CommanNoteBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NoteController());
    Get.lazyPut(() => NoteApi());
  }
}
