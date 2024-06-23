import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/settings/controller.dart';
import 'package:flutter_application_1/common/settings/model/settings.dart';
import 'package:flutter_application_1/pages/settings/wdiget/custom_radios.dart';
import 'package:get/get.dart';

Widget studyMode() {
  final settingsController = Get.find<SettingsController>();
  return customRadios(
      title: "学习模式",
      valueLabelTextMap: {StudyMode.confirm: "再认", StudyMode.spell: "拼写"},
      groupValue: settingsController.studyMode.value,
      onChanged: settingsController.setStudyMode);
}
