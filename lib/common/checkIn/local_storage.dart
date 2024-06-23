import 'package:flutter_application_1/common/checkIn/model/check_in.dart';
import 'package:get_storage/get_storage.dart';

const key = "checkIn";

class CheckInLocalStore {
  static final localStorge = GetStorage();

  static write(int chechInTimes) async {
    DateTime now = DateTime.now();
    final checkInModel = CheckInModel(
        chechInTimes: chechInTimes, latestCheckInDate: now.toIso8601String());
    await localStorge.write(key, checkInModel.toJson());
  }

  static CheckInModel? read() {
    final data = localStorge.read(key);
    if (data == null) {
      return null;
    }

    return CheckInModel.fromJson(data);
  }
}
