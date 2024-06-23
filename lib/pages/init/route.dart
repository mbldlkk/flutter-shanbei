import 'package:flutter_application_1/common/auth/binding.dart';
import 'package:flutter_application_1/common/book/binding.dart';
import 'package:flutter_application_1/pages/init/binding.dart';
import 'package:flutter_application_1/pages/init/page.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';

final initPage = GetPage(
    name: AppPagesName.init,
    page: () => const InitPage(),
    bindings: [InitPageBinding(), CommonAuthBinding(), CommonBookBinding()],
    transition: Transition.leftToRight);
