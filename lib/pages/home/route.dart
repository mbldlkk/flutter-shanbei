import 'package:flutter_application_1/common/book/binding.dart';
import 'package:flutter_application_1/common/studyPlan/binding.dart';
import 'package:flutter_application_1/common/studyRecord/binding.dart';
import 'package:flutter_application_1/pages/home/page.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';

import 'binding.dart';

final indexPage = GetPage(
    name: AppPagesName.index,
    page: () => const IndexPage(),
    bindings: [
      IndexPageBinding(),
      CommonStudyPlanBinding(),
      CommonStudyRecordBinding(),
      CommonBookBinding()
    ],
    transition: Transition.leftToRight);
