// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WordModelImpl _$$WordModelImplFromJson(Map<String, dynamic> json) =>
    _$WordModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      explainCN: json['explainCN'] as String,
      UKSymbol: json['UKSymbol'] as String,
      USSymbol: json['USSymbol'] as String,
      USAudio: json['USAudio'] as String,
      UKAudio: json['UKAudio'] as String,
      type: json['type'] as String,
      sentence: json['sentence'] as String,
      sentenceCN: json['sentenceCN'] as String,
      sentenceAudio: json['sentenceAudio'] as String,
    );

Map<String, dynamic> _$$WordModelImplToJson(_$WordModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'explainCN': instance.explainCN,
      'UKSymbol': instance.UKSymbol,
      'USSymbol': instance.USSymbol,
      'USAudio': instance.USAudio,
      'UKAudio': instance.UKAudio,
      'type': instance.type,
      'sentence': instance.sentence,
      'sentenceCN': instance.sentenceCN,
      'sentenceAudio': instance.sentenceAudio,
    };

_$TodayReviewWordImpl _$$TodayReviewWordImplFromJson(
        Map<String, dynamic> json) =>
    _$TodayReviewWordImpl(
      word: WordModel.fromJson(json['word'] as Map<String, dynamic>),
      studyTimes: (json['studyTimes'] as num).toInt(),
    );

Map<String, dynamic> _$$TodayReviewWordImplToJson(
        _$TodayReviewWordImpl instance) =>
    <String, dynamic>{
      'word': instance.word,
      'studyTimes': instance.studyTimes,
    };

_$UploadWordItemImpl _$$UploadWordItemImplFromJson(Map<String, dynamic> json) =>
    _$UploadWordItemImpl(
      wordId: json['wordId'] as String,
      nextReviewTime: json['nextReviewTime'] as String,
      studyTimes: (json['studyTimes'] as num?)?.toInt(),
      isSimple: json['isSimple'] as bool?,
    );

Map<String, dynamic> _$$UploadWordItemImplToJson(
        _$UploadWordItemImpl instance) =>
    <String, dynamic>{
      'wordId': instance.wordId,
      'nextReviewTime': instance.nextReviewTime,
      'studyTimes': instance.studyTimes,
      'isSimple': instance.isSimple,
    };

_$SummaryWordItemImpl _$$SummaryWordItemImplFromJson(
        Map<String, dynamic> json) =>
    _$SummaryWordItemImpl(
      name: json['name'] as String,
      type: json['type'] as String,
      USAudio: json['USAudio'] as String,
      explainCN: json['explainCN'] as String,
      isKnow: json['isKnow'] as bool?,
    );

Map<String, dynamic> _$$SummaryWordItemImplToJson(
        _$SummaryWordItemImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'USAudio': instance.USAudio,
      'explainCN': instance.explainCN,
      'isKnow': instance.isKnow,
    };

_$StudyWordResImpl _$$StudyWordResImplFromJson(Map<String, dynamic> json) =>
    _$StudyWordResImpl(
      data: json['data'] as List<dynamic>,
      type: (json['type'] as num).toInt(),
    );

Map<String, dynamic> _$$StudyWordResImplToJson(_$StudyWordResImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'type': instance.type,
    };

_$NewWordResImpl _$$NewWordResImplFromJson(Map<String, dynamic> json) =>
    _$NewWordResImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => WordModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: (json['type'] as num).toInt(),
    );

Map<String, dynamic> _$$NewWordResImplToJson(_$NewWordResImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'type': instance.type,
    };

_$ReviewWordResImpl _$$ReviewWordResImplFromJson(Map<String, dynamic> json) =>
    _$ReviewWordResImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => TodayReviewWord.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: (json['type'] as num).toInt(),
    );

Map<String, dynamic> _$$ReviewWordResImplToJson(_$ReviewWordResImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'type': instance.type,
    };
