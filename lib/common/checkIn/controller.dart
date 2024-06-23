import 'package:flutter_application_1/common/checkIn/api.dart';
import 'package:flutter_application_1/common/checkIn/local_storage.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';

class CheckInController extends GetxController {
  //根据store  最近打卡日期对比 今日是否打卡
  final _todayIsCheckIn = Rx<bool>(false);
  bool get todayIsCheckIn => _todayIsCheckIn.value;
  set todayIsCheckIn(bool value) => _todayIsCheckIn.value = value;

  final _checkInTimes = Rx<int>(0);
  int get checkInTimes => _checkInTimes.value;
  set checkInTimes(int value) => _checkInTimes.value = value;

  final checkInApi = Get.find<CheckInApi>();

  @override
  void onInit() {
    super.onInit();

    final checkInModel = CheckInLocalStore.read();

    if (checkInModel == null) {
      return;
    }

    final DateTime now = DateTime.now();
    final latestCheckInDate = DateTime.parse(checkInModel.latestCheckInDate);

    final isSameDate = (latestCheckInDate.year == now.year) &&
        (latestCheckInDate.month == now.month) &&
        (latestCheckInDate.day == now.day);
    // 是今天打的卡

    todayIsCheckIn = isSameDate;

    checkInTimes = checkInModel.chechInTimes;
  }

  toggleCheckIn() async {
    await checkInApi.postCheckIn();
    // 提交打卡成功,则存储 最新打卡时间和次数
    checkInTimes = checkInTimes + 1;
    todayIsCheckIn = true;
    CheckInLocalStore.write(checkInTimes);
    Get.offNamed(AppPagesName.index);
  }
}
