import 'package:flutter_application_1/common/userBook/binding.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';

import 'binding.dart';
import 'page.dart';

final selectBookPage = GetPage(
    name: AppPagesName.selectBook,
    page: () => const SelectBookPage(),
    bindings: [SelectBookPageBinding(), CommonUserBookBinding()],
    transition: Transition.rightToLeftWithFade);
