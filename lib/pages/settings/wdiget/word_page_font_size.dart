import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/settings/controller.dart';
import 'package:flutter_application_1/common/settings/model/settings.dart';
import 'package:flutter_application_1/pages/settings/wdiget/custom_radios.dart';
import 'package:get/get.dart';

Widget wordPageFontSize() {
  final settingsController = Get.find<SettingsController>();
  return customRadios(
      title: "学习页面字体大小",
      valueLabelTextMap: {
        WordPageFontSize.standard: '标准',
        WordPageFontSize.big: "大字"
      },
      groupValue: settingsController.wordPageFontSize.value,
      onChanged: settingsController.setWordPageFontSize);
}
