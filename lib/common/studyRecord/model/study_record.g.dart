// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'study_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudyRecordInfoImpl _$$StudyRecordInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$StudyRecordInfoImpl(
      todayStudyedSuccessNewWord:
          (json['todayStudyedSuccessNewWord'] as num).toInt(),
      todayReviewedSuccessWord:
          (json['todayReviewedSuccessWord'] as num).toInt(),
      currentBookStudyedSuccessCount:
          (json['currentBookStudyedSuccessCount'] as num).toInt(),
    );

Map<String, dynamic> _$$StudyRecordInfoImplToJson(
        _$StudyRecordInfoImpl instance) =>
    <String, dynamic>{
      'todayStudyedSuccessNewWord': instance.todayStudyedSuccessNewWord,
      'todayReviewedSuccessWord': instance.todayReviewedSuccessWord,
      'currentBookStudyedSuccessCount': instance.currentBookStudyedSuccessCount,
    };
