import 'dart:developer';

import 'package:flutter_application_1/common/studyRecord/model/study_record.dart';
import 'package:get_storage/get_storage.dart';

const key = "studyRecord";

class StudyRecordLocalStorge {
  static final localStorge = GetStorage();

  static write(StudyRecordInfo studyRecord) async {
    await localStorge.write(key, studyRecord.toJson());
  }

  static StudyRecordInfo? read() {
    final data = localStorge.read(key);
    log("本地缓存-学习记录: $data; 类型: ${data.runtimeType}");
    if (data != null) {
      return StudyRecordInfo.fromJson(data);
    }
    return data;
  }
}
