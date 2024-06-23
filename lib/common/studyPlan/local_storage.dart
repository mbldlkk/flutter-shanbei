import 'dart:developer';

import 'package:flutter_application_1/common/studyPlan/model/study_plan.dart';
import 'package:get_storage/get_storage.dart';

const key = "studyPlan";

class StudyPlanLocalStorge {
  static final localStorge = GetStorage();

  static write(StudyPlanInfo studyPlan) async {
    await localStorge.write(key, studyPlan.toJson());
  }

  static StudyPlanInfo? read() {
    final data = localStorge.read(key);
    log("本地缓存-学习计划: $data; 类型: ${data.runtimeType}");
    if (data != null) {
      return StudyPlanInfo.fromJson(data);
    }
    return data;
  }
}
