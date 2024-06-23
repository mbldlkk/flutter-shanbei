import 'dart:developer';

import 'package:get_storage/get_storage.dart';

const dateKey = "latestSignInDate";

class DateTimeUtils {
  static final localStorge = GetStorage();
  static bool needUpdate() {
    // 如果是新的一天需要更新 学习记录和学习计划 等

    final latestUseDateTimeString = localStorge.read(dateKey);
    DateTime? latestUseDateTime;
    log(latestUseDateTimeString.runtimeType.toString());
    if (latestUseDateTimeString != null) {
      latestUseDateTime = DateTime.parse(latestUseDateTimeString);
    }

    final nowDateTime = DateTime.now();

    if (latestUseDateTime == null) {
      localStorge.write(dateKey, nowDateTime.toIso8601String());
      return true;
    }

    //上次使用app的时间是否是今天
    final isSameDay = (nowDateTime.year == latestUseDateTime.year) &&
        (nowDateTime.month == latestUseDateTime.month) &&
        (nowDateTime.day == latestUseDateTime.day);

    if (isSameDay) {
      return false;
    }

    localStorge.write(dateKey, nowDateTime.toIso8601String());
    return true;
  }
}
