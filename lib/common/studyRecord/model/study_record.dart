import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'study_record.freezed.dart';

part 'study_record.g.dart';

@freezed
class StudyRecordInfo with _$StudyRecordInfo {
  const factory StudyRecordInfo({
    required int todayStudyedSuccessNewWord,
    required int todayReviewedSuccessWord,
    required int currentBookStudyedSuccessCount
  }) = _StudyRecordInfo;

  factory StudyRecordInfo.fromJson(Map<String, Object?> json) =>
      _$StudyRecordInfoFromJson(json);
}


