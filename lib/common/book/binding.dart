import 'package:flutter_application_1/common/book/api.dart';
import 'package:flutter_application_1/common/book/controller.dart';

import 'package:get/get.dart';

class CommonBookBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookController());
    Get.lazyPut(() => BookApi());
  }
}
