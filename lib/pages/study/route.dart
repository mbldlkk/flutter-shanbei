import 'package:flutter_application_1/common/note/binding.dart';
import 'package:flutter_application_1/common/settings/binding.dart';
import 'package:flutter_application_1/common/studyPlan/binding.dart';
import 'package:flutter_application_1/common/studyRecord/binding.dart';
import 'package:flutter_application_1/common/studyWord/binding.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';

import 'binding.dart';
import 'page.dart';

final studyPage = GetPage(
    name: AppPagesName.study,
    page: () => const StudyPage(),
    bindings: [
      StudyPageBinding(),
      CommonStudyPlanBinding(),
      CommonStudyRecordBinding(),
      CommanStudyWordBinding(),
      CommanNoteBinding(),
      CommonSettingsBinding()
    ],
    transition: Transition.rightToLeftWithFade);
