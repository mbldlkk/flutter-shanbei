import 'package:flutter_application_1/common/settings/controller.dart';
import 'package:flutter_application_1/pages/settings/wdiget/custom_list_switch.dart';
import 'package:get/get.dart';

sentenceAutoPronounce() {
  final settingsController = Get.find<SettingsController>();
  return customListSwitch(
      title: "例句自动发音",
      value: settingsController.sentenceAutoPronounce.value,
      onchange: settingsController.setSentenceAutoPronounce);
}
