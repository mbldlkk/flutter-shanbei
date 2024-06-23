import 'dart:async';
import 'dart:developer';

import 'package:flutter_application_1/common/auth/local_storage.dart';
import 'package:flutter_application_1/common/checkIn/api.dart';
import 'package:flutter_application_1/common/checkIn/local_storage.dart';
import 'package:flutter_application_1/common/studyPlan/api.dart';
import 'package:flutter_application_1/common/studyPlan/local_storage.dart';
import 'package:flutter_application_1/common/studyRecord/api.dart';
import 'package:flutter_application_1/common/studyRecord/local_storage.dart';
import 'package:flutter_application_1/common/userBook/api.dart';
import 'package:flutter_application_1/common/userBook/local_storage.dart';

import 'package:flutter_application_1/pages/auth/wdiget/background_video_controller.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:flutter_application_1/utils/date_time.dart';
import 'package:get/get.dart';

class InitPageController extends GetxController {
  final studyPlanApi = Get.find<StudyPlanApi>();
  final userBookApi = Get.find<UserBookApi>();
  final studyRecordApi = Get.find<StudyRecordApi>();
  final checkInApi = Get.find<CheckInApi>();

  @override
  void onReady() async {
    super.onReady();
    log("初始化页面控制器 判断app 打开后的逻辑", name: "GetX-log");
    final userToken = AuthLocalStorge.read();

    // Get.offNamed(AppPagesName.index);
    // return;

    if (userToken == null) {
      // 是否登录了, 如果没有登录, 就进入基础登录页面
      // 需要初始化视频, 然后在进入时播放.

      Timer.periodic(const Duration(seconds: 1), (timer) {
        log("视频初始化状态 ${videoPlayerController.value.isInitialized}",
            name: "GetX-log");
        if (videoPlayerController.value.isInitialized) {
          Get.offNamed(AppPagesName.baseSignIn);
          timer.cancel();
          videoPlayerController.play();
        }
      });
      return;
    }

    //如果已经登录了, 那就判断 是否选书学习了.
    if (UserBookLocalStorage.read() == null) {
      //没有书就和服务器确认一下,
      final userBooks = await userBookApi.fetchUserBook();

      //真没有选书就跳转至 选书页面
      if (userBooks.allbooks.isEmpty) {
        delayRedirect(AppPagesName.selectBook);
      } else {
        UserBookLocalStorage.write(userBooks);
        log("每日初始化, 本地数据丢失 获取最新数据");
        fetchLatestServerData();

        delayRedirect(AppPagesName.index);
      }
      return;
    }

    //  有书 那就进入主页进行学习
    //  在进入学习页面之前, 查询是否需要重置更新 学习记录,学习计划.
    final needUpdate = DateTimeUtils.needUpdate();
    log(
      "是否需要更新, $needUpdate ",
    );
    if (needUpdate) {
      newDayReset();
    }

    delayRedirect(AppPagesName.index);
  }

  //考虑到 中途重新登录设备的情况, 所以需要获取 服务器最新数据合理
  fetchLatestServerData() async {
    final studyPlanInfo = await studyPlanApi.fetchTodayStudyPlan();
    StudyPlanLocalStorge.write(studyPlanInfo);

    //学习记录
    final studyRecordInfo = await studyRecordApi.getCurrentBookProgress();
    StudyRecordLocalStorge.write(studyRecordInfo);

    //服务器打卡数据
    final checkInTimes = await checkInApi.fetchCheckInTimes();

    if (checkInTimes > 0) {
      CheckInLocalStore.write(checkInTimes);
    }
  }

  // 应该放在 每日欢迎页面中, 测试用例,
  newDayReset() async {
    //新的一天 从服务器获取新的学习计划.
    final studyPlanInfo = await studyPlanApi.fetchTodayStudyPlan();
    StudyPlanLocalStorge.write(studyPlanInfo);

    final latestUserBookStudyRecordState =
        await studyRecordApi.getCurrentBookProgress();

    //新的一天学习记录从0开始.
    StudyRecordLocalStorge.write(latestUserBookStudyRecordState);
  }

  //避免初始页一闪而过, 延迟跳转
  delayRedirect(String route) {
    Timer(const Duration(seconds: 3), () {
      Get.offNamed(route);
    });
  }
}
