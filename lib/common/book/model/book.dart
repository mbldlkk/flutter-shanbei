import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'book.freezed.dart';

part 'book.g.dart';

@freezed
class BookModel with _$BookModel {
  const factory BookModel({
    required int id,
    required String name,
    required int wordCount,
  }) = _BookModel;

  factory BookModel.fromJson(Map<String, Object?> json) =>
      _$BookModelFromJson(json);
}


