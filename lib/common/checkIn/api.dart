import 'package:flutter_application_1/base/api.dart';
import 'package:flutter_application_1/base/auth_api.dart';

const subUrl = "/check-in/";

class CheckInApi extends BaseAuthAPi {
  CheckInApi() : super(subUrl: subUrl);

  fetchTodayCheckIn() async {
    final res = await get("fetch-by-userId");
    httpStatusExceptionHandle(res.status);
  }

  //提交打卡
  postCheckIn() async {
    final res = await post("today-checkIn", "");
    httpStatusExceptionHandle(res.status);
  }

  //查询打卡天数
  fetchCheckInTimes() async {
    final res = await get("checkInTimes");
    httpStatusExceptionHandle(res.status);
    return int.parse(res.body);
  }
}
