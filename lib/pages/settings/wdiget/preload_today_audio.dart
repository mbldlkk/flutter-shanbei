import 'package:flutter_application_1/common/settings/controller.dart';
import 'package:flutter_application_1/pages/settings/wdiget/custom_list_switch.dart';
import 'package:get/get.dart';

preloadTodayAudio() {
  final settingsController = Get.find<SettingsController>();
  return customListSwitch(
      title: "移动网络下预加载当日音频",
      value: settingsController.preloadTodayAudio.value,
      onchange: settingsController.setPreloadTodayAudio);
}
