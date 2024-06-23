import 'dart:developer';

import 'package:get_storage/get_storage.dart';

const key = "studyRecord";

class StudyTimerLocalStorage {
  static final localStorge = GetStorage();

  static write(int studyTime) async {
    await localStorge.write(key, studyTime);
  }

  static int? read() {
    final data = localStorge.read(key);
    log("本地缓存-学习记录: $data; 类型: ${data.runtimeType}");
    return 1;
  }
}
