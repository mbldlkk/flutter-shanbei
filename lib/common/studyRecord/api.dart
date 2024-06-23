import 'dart:developer';

import 'package:flutter_application_1/base/auth_api.dart';
import 'package:flutter_application_1/common/studyRecord/model/study_record.dart';

const subUrl = "/word";

class StudyRecordApi extends BaseAuthAPi {
  StudyRecordApi() : super(subUrl: subUrl);

  Future<StudyRecordInfo> getCurrentBookProgress() async {
    final res = await get("/currentBookProgress");
    if (res.hasError) {
      throw Exception(res.statusText);
    }

    log("res是${res.bodyString}, 类型是${res.runtimeType}");
    return StudyRecordInfo.fromJson(res.body);
  }

  //获取当前书籍的 新老词学习量
  Future<int> getStudyedSuccessWordCount() async {
    final res = await get("countSomeWord");
    if (res.hasError) {
      throw Exception(res.statusText);
    }
    return res.body["userBookLearnedWord"];
  }
}
