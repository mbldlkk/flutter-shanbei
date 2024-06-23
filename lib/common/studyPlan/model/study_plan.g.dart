// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'study_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudyPlanInfoImpl _$$StudyPlanInfoImplFromJson(Map<String, dynamic> json) =>
    _$StudyPlanInfoImpl(
      todayNeedStudyedNewWord:
          (json['todayNeedStudyNewWordCount'] as num).toInt(),
      todayNeedReviewedWord: (json['todayNeedReviewWordCount'] as num).toInt(),
    );

Map<String, dynamic> _$$StudyPlanInfoImplToJson(_$StudyPlanInfoImpl instance) =>
    <String, dynamic>{
      'todayNeedStudyNewWordCount': instance.todayNeedStudyedNewWord,
      'todayNeedReviewWordCount': instance.todayNeedReviewedWord,
    };
