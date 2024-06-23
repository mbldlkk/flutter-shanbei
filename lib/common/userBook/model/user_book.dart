import 'package:flutter_application_1/common/book/model/book.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_book.freezed.dart';

part 'user_book.g.dart';

//结构不合理
@freezed
class UserBookRes with _$UserBookRes {
  const factory UserBookRes(
      {required int id,
      required String name,
      required int wordCount,
      required bool isCurrentLearn}) = _UserBookRes;

  factory UserBookRes.fromJson(Map<String, Object?> json) =>
      _$UserBookResFromJson(json);
}

// @freezed
// class UserBook with _$UserBook {
//   const factory UserBook({
//     required int currentLearningBookId,
//     required List<BookModel> allbooks,
//   }) = _UserBook;

//   factory UserBook.fromJson(Map<String, Object?> json) =>
//       _$UserBookFromJson(json);
// }
//bug? 只用json序列化

@JsonSerializable()
class UserBook {
  UserBook({required this.currentLearningBookId, required this.allbooks});
  int currentLearningBookId;
  @JsonKey(toJson: _toJson)
  List<BookModel> allbooks;

  //不同的类使用不同的mixin即可
  factory UserBook.fromJson(Map<String, dynamic> json) =>
      _$UserBookFromJson(json);

  Map<String, dynamic> toJson() => _$UserBookToJson(this);

  static _toJson(List<BookModel> value) =>
      value.map((e) => e.toJson()).toList();
}
