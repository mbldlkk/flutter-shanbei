import 'package:get/get.dart';

class NavController extends GetxController {
  final _currentIndex = 0.obs;
  int get currentIndex => _currentIndex.value;
  set currentIndex(int value) => _currentIndex.value = value;

  void setCurrentIndex(int value) {
    currentIndex = value;
  }
}
