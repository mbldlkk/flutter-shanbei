import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/settings/controller.dart';
import 'package:flutter_application_1/common/settings/model/settings.dart';
import 'package:flutter_application_1/pages/settings/wdiget/custom_radios.dart';
import 'package:get/get.dart';

Widget knowWordPageUI() {
  final settingsController = Get.find<SettingsController>();
  return customRadios(
      title: "认识/不认识页面",
      valueLabelTextMap: {
        KnowWordPageUI.newUI: "新版",
        KnowWordPageUI.oldUI: "旧版"
      },
      groupValue: settingsController.knowWordPageUI.value,
      onChanged: settingsController.setKnowWordPageUI);
}
