import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/settings/controller.dart';
import 'package:flutter_application_1/common/settings/model/settings.dart';
import 'package:flutter_application_1/pages/settings/wdiget/custom_radios.dart';
import 'package:get/get.dart';

Widget homePageStudyMode() {
  final settingsController = Get.find<SettingsController>();
  return customRadios(
      title: "首页学习模式",
      valueLabelTextMap: {
        HomePageStudyMode.examination: "考研模式",
        HomePageStudyMode.common: "通用模式"
      },
      groupValue: settingsController.homePageStudyMode.value,
      onChanged: settingsController.setHomePageStudyMode);
}
