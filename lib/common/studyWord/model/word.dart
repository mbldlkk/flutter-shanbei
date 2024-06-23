// 这个文件是 "main.dart"
// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'word.freezed.dart';
part 'word.g.dart';

@freezed
class WordModel with _$WordModel {
  const factory WordModel({
    required String id,
    required String name,
    required String explainCN,
    required String UKSymbol,
    required String USSymbol,
    required String USAudio,
    required String UKAudio,
    required String type,
    required String sentence,
    required String sentenceCN,
    required String sentenceAudio,
  }) = _WordModel;

  factory WordModel.fromJson(Map<String, Object?> json) =>
      _$WordModelFromJson(json);
}

@freezed
class TodayReviewWord with _$TodayReviewWord {
  const factory TodayReviewWord({
    required WordModel word,
    required int studyTimes,
  }) = _TodayReviewWord;

  factory TodayReviewWord.fromJson(Map<String, Object?> json) =>
      _$TodayReviewWordFromJson(json);
}

@freezed
class UploadWordItem with _$UploadWordItem {
  const factory UploadWordItem({
    required String wordId,
    required String nextReviewTime,
    int? studyTimes,
    bool? isSimple,
  }) = _UploadWordItem;

  factory UploadWordItem.fromJson(Map<String, Object?> json) =>
      _$UploadWordItemFromJson(json);
}

@freezed
class SummaryWordItem with _$SummaryWordItem {
  const factory SummaryWordItem({
    required String name,
    required String type,
    required String USAudio,
    required String explainCN,
    bool? isKnow,
  }) = _SummaryWordItem;

  factory SummaryWordItem.fromJson(Map<String, Object?> json) =>
      _$SummaryWordItemFromJson(json);
}

@freezed
class StudyWordRes with _$StudyWordRes {
  const factory StudyWordRes({
    required List<dynamic> data,
    required int type,
  }) = _StudyWordRes;

  factory StudyWordRes.fromJson(Map<String, Object?> json) =>
      _$StudyWordResFromJson(json);
}

@freezed
class NewWordRes with _$NewWordRes {
  const factory NewWordRes({
    required List<WordModel> data,
    required int type,
  }) = _NewWordRes;

  factory NewWordRes.fromJson(Map<String, Object?> json) =>
      _$NewWordResFromJson(json);
}

@freezed
class ReviewWordRes with _$ReviewWordRes {
  const factory ReviewWordRes({
    required List<TodayReviewWord> data,
    required int type,
  }) = _ReviewWordRes;

  factory ReviewWordRes.fromJson(Map<String, Object?> json) =>
      _$ReviewWordResFromJson(json);
}
