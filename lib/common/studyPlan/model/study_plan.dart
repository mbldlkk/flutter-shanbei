import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'study_plan.freezed.dart';

part 'study_plan.g.dart';

@freezed
class StudyPlanInfo with _$StudyPlanInfo {
  const factory StudyPlanInfo({
    @JsonKey(name: "todayNeedStudyNewWordCount")
    required int todayNeedStudyedNewWord,
    @JsonKey(name: "todayNeedReviewWordCount")
    required int todayNeedReviewedWord,
  }) = _StudyPlanInfo;

  factory StudyPlanInfo.fromJson(Map<String, Object?> json) =>
      _$StudyPlanInfoFromJson(json);
}
