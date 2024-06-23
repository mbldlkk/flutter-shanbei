import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/settings/wdiget/custom_list_switch.dart';

import 'package:get/get.dart';
import 'package:flutter_application_1/common/settings/controller.dart';

Widget collinsDefaultShow() {
  final settingsController = Get.find<SettingsController>();
  return customListSwitch(
      title: "柯林斯默认显示",
      value: settingsController.collinsDefaultShow.value,
      onchange: settingsController.setCollinsDefaultShow);
}
