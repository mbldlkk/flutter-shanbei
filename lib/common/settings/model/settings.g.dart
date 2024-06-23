// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsInfoImpl _$$SettingsInfoImplFromJson(Map<String, dynamic> json) =>
    _$SettingsInfoImpl(
      intelligentMode: json['intelligentMode'] as bool,
      studyMode: $enumDecode(_$StudyModeEnumMap, json['studyMode']),
      studySeq: $enumDecode(_$StudySeqEnumMap, json['studySeq']),
      wordPronounce: $enumDecode(_$WordPronounceEnumMap, json['wordPronounce']),
      wordAutoPronounce: json['wordAutoPronounce'] as bool,
      sentenceAutoPronounce: json['sentenceAutoPronounce'] as bool,
      preloadTodayAudio: json['preloadTodayAudio'] as bool,
      wordPageFontSize:
          $enumDecode(_$WordPageFontSizeEnumMap, json['wordPageFontSize']),
      homePageStudyMode:
          $enumDecode(_$HomePageStudyModeEnumMap, json['homePageStudyMode']),
      knowWordPageUI:
          $enumDecode(_$KnowWordPageUIEnumMap, json['knowWordPageUI']),
      collinsDefaultShow: json['collinsDefaultShow'] as bool,
      colinsDictionary:
          $enumDecode(_$ColinsDictionaryEnumMap, json['colinsDictionary']),
    );

Map<String, dynamic> _$$SettingsInfoImplToJson(_$SettingsInfoImpl instance) =>
    <String, dynamic>{
      'intelligentMode': instance.intelligentMode,
      'studyMode': _$StudyModeEnumMap[instance.studyMode]!,
      'studySeq': _$StudySeqEnumMap[instance.studySeq]!,
      'wordPronounce': _$WordPronounceEnumMap[instance.wordPronounce]!,
      'wordAutoPronounce': instance.wordAutoPronounce,
      'sentenceAutoPronounce': instance.sentenceAutoPronounce,
      'preloadTodayAudio': instance.preloadTodayAudio,
      'wordPageFontSize': _$WordPageFontSizeEnumMap[instance.wordPageFontSize]!,
      'homePageStudyMode':
          _$HomePageStudyModeEnumMap[instance.homePageStudyMode]!,
      'knowWordPageUI': _$KnowWordPageUIEnumMap[instance.knowWordPageUI]!,
      'collinsDefaultShow': instance.collinsDefaultShow,
      'colinsDictionary': _$ColinsDictionaryEnumMap[instance.colinsDictionary]!,
    };

const _$StudyModeEnumMap = {
  StudyMode.spell: 'spell',
  StudyMode.confirm: 'confirm',
};

const _$StudySeqEnumMap = {
  StudySeq.newFirst: 'newFirst',
  StudySeq.mixed: 'mixed',
  StudySeq.reviewFirst: 'reviewFirst',
};

const _$WordPronounceEnumMap = {
  WordPronounce.US: 'US',
  WordPronounce.UK: 'UK',
};

const _$WordPageFontSizeEnumMap = {
  WordPageFontSize.standard: 'standard',
  WordPageFontSize.big: 'big',
};

const _$HomePageStudyModeEnumMap = {
  HomePageStudyMode.examination: 'examination',
  HomePageStudyMode.common: 'common',
};

const _$KnowWordPageUIEnumMap = {
  KnowWordPageUI.newUI: 'newUI',
  KnowWordPageUI.oldUI: 'oldUI',
};

const _$ColinsDictionaryEnumMap = {
  ColinsDictionary.chAndEn: 'chAndEn',
  ColinsDictionary.en: 'en',
};
