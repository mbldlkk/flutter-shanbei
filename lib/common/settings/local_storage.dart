import 'package:flutter_application_1/common/settings/model/settings.dart';
import 'package:get_storage/get_storage.dart';

const key = "settings";

class SettingsLocalStorge {
  static final localStorge = GetStorage();

  static write(SettingsInfo settings) async {
    await localStorge.write(key, settings.toJson());
  }

  static SettingsInfo? read() {
    final data = localStorge.read(key);
    if (data != null) {
      return SettingsInfo.fromJson(data);
    }
    return data;
  }
}
