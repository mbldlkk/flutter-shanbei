import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/settings/controller.dart';
import 'package:flutter_application_1/common/settings/model/settings.dart';
import 'package:flutter_application_1/pages/settings/wdiget/custom_radios.dart';

import 'package:get/get.dart';

Widget colinsDictionary() {
  final settingsController = Get.find<SettingsController>();
  return customRadios(
      title: "柯林斯词典",
      valueLabelTextMap: {
        ColinsDictionary.chAndEn: "中英双解",
        ColinsDictionary.en: "英解"
      },
      groupValue: settingsController.colinsDictionary.value,
      onChanged: settingsController.setColinsDictionary);
}
