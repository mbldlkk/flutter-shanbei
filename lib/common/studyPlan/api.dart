import 'package:flutter_application_1/base/auth_api.dart';
import 'package:flutter_application_1/common/studyPlan/model/study_plan.dart';

const subUrl = "/study";

class StudyPlanApi extends BaseAuthAPi {
  StudyPlanApi() : super(subUrl: subUrl);

  //获取今日学习计划,服务端api根据时间是否今日 判断是否更新学习计划
  Future<StudyPlanInfo> fetchTodayStudyPlan() async {
    final res = await get("/updateTodayStudyPlan");
    if (res.statusCode == 200) {
      return StudyPlanInfo.fromJson(res.body);
    } else {
      throw Exception("获取今日学习计划错误, ${res.statusCode}");
    }
  }
}
