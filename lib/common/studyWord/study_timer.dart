import 'dart:async';
import 'dart:developer';

import 'package:flutter_application_1/common/studyWord/local_storage.dart';
import 'package:get/get.dart';

const duration = Duration(minutes: 1);

class StudyTimerController extends GetxController {
  late final Timer timer;
  //学习时间 默认按按分钟计算
  final _studyTime = 1.obs;
  int get studyTime => _studyTime.value;
  set studyTime(int value) => _studyTime.value = value;

  @override
  void onInit() {
    super.onInit();

    timer = Timer.periodic(duration, (timer) {
      addOneMinute();
    });
    log("创建计时器");
  }

  addOneMinute() {
    studyTime = studyTime + 1;
  }

  @override
  void onClose() {
    log("计时器关闭");
    super.onClose();
    timer.cancel();
    StudyTimerLocalStorage.write(studyTime);
  }
}
