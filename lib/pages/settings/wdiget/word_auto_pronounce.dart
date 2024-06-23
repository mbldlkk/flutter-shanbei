import 'package:flutter_application_1/common/settings/controller.dart';
import 'package:flutter_application_1/pages/settings/wdiget/custom_list_switch.dart';
import 'package:get/get.dart';

wordAutoPronounce() {
  final settingsController = Get.find<SettingsController>();
  return customListSwitch(
      title: "单词自动发音",
      value: settingsController.wordAutoPronounce.value,
      onchange: settingsController.setWordAutoPronounce);
}
