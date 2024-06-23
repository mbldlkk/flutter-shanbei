import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/settings/controller.dart';
import 'package:flutter_application_1/common/settings/model/settings.dart';
import 'package:flutter_application_1/pages/settings/wdiget/custom_radios.dart';
import 'package:get/get.dart';

Widget studySeq() {
  final settingsController = Get.find<SettingsController>();
  return customRadios(
      title: "学习顺序",
      valueLabelTextMap: {
        StudySeq.mixed: "混合学习",
        StudySeq.newFirst: "新词优先",
        StudySeq.reviewFirst: "复习优先"
      },
      groupValue: settingsController.studySeq.value,
      onChanged: settingsController.setStudySeq);
}
