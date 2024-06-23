import 'package:flutter_application_1/base/api.dart';
import 'package:flutter_application_1/base/auth_api.dart';
import 'package:flutter_application_1/common/studyWord/model/word.dart';

import "dart:developer" as developer;

const subUrl = "/word/";

class StudyWordApi extends BaseAuthAPi {
  StudyWordApi() : super(subUrl: subUrl);

  //默认一轮7个单词, 获取当前学习书籍的 学习单词
  getStageWord() async {
    var res = await get("today_word_per_study_stage");

    httpStatusExceptionHandle(res.status);
    final studyWordRes = StudyWordRes.fromJson(res.body);

    if (studyWordRes.type == 0) {
      return NewWordRes(
          data: studyWordRes.data.map((e) => WordModel.fromJson(e)).toList(),
          type: studyWordRes.type);
    } else {
      return ReviewWordRes(
          data: studyWordRes.data
              .map((e) => TodayReviewWord.fromJson(e))
              .toList(),
          type: studyWordRes.type);
    }
    // 由于Api返回数据结构不同,返回至上层的数据结构也不同.
  }

  void uploadWordData(
      List<dynamic>? todayNewWord, List<dynamic>? todayReviewWord) async {
    try {
      var response = await post(
        'update_after_study',
        {"todayNewWord": todayNewWord, "todayReviewWord": todayReviewWord},
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 201) {
        developer.log('单词学习数据已经上传');
      } else {
        throw Exception('上传用户数据报错');
      }
    } catch (e) {
      developer.log('错误 $e');
    }
  }
}
