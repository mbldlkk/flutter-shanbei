import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/settings/controller.dart';
import 'package:flutter_application_1/common/settings/model/settings.dart';
import 'package:flutter_application_1/pages/settings/wdiget/custom_radios.dart';
import 'package:get/get.dart';

Widget wordPronounce() {
  final settingsController = Get.find<SettingsController>();
  return customRadios(
      title: "单词发音",
      valueLabelTextMap: {WordPronounce.US: "美音", WordPronounce.UK: "英音"},
      groupValue: settingsController.wordPronounce.value,
      onChanged: settingsController.setWordPronounce);
}
