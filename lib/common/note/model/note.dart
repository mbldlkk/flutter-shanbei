import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'note.freezed.dart';

part 'note.g.dart';

enum SignInKind { phoneNumber, email }

@freezed
class NoteModel with _$NoteModel {
  const factory NoteModel({
    @JsonKey(defaultValue: "demo") required String authorName,
    required String content,
  }) = _NoteModel;

  factory NoteModel.fromJson(Map<String, Object?> json) =>
      _$NoteModelFromJson(json);
}

@freezed
class WordNoteResponse with _$WordNoteResponse {
  const factory WordNoteResponse({
    required List<NoteModel> wordNote,
    required NoteModel? userWordNote,
  }) = _WordNoteResponse;

  factory WordNoteResponse.fromJson(Map<String, Object?> json) =>
      _$WordNoteResponseFromJson(json);
}
