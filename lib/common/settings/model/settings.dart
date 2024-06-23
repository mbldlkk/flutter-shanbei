import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'settings.freezed.dart';

part 'settings.g.dart';

enum StudyMode { spell, confirm }

enum StudySeq { newFirst, mixed, reviewFirst }

// ignore: constant_identifier_names
enum WordPronounce { US, UK }

enum WordPageFontSize { standard, big }

enum HomePageStudyMode { examination, common }

enum KnowWordPageUI { newUI, oldUI }

enum ColinsDictionary { chAndEn, en }

@freezed
class SettingsInfo with _$SettingsInfo {
  const factory SettingsInfo({
    required bool intelligentMode,
    required StudyMode studyMode,
    required StudySeq studySeq,
    required WordPronounce wordPronounce,
    required bool wordAutoPronounce,
    required bool sentenceAutoPronounce,
    required bool preloadTodayAudio,
    required WordPageFontSize wordPageFontSize,
    required HomePageStudyMode homePageStudyMode,
    required KnowWordPageUI knowWordPageUI,
    required bool collinsDefaultShow,
    required ColinsDictionary colinsDictionary,
  }) = _SettingsInfo;

  factory SettingsInfo.fromJson(Map<String, Object?> json) =>
      _$SettingsInfoFromJson(json);
}
