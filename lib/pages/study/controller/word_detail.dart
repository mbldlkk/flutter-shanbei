//第三方
import 'package:get/get.dart';

enum CurrentSection { cet4, colins }

class WordDetailController extends GetxController {
  final currentSection = Rx<CurrentSection>(CurrentSection.cet4);

  void setCurrentSection(CurrentSection value) {
    currentSection.value = value;
  }
}
