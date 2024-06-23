// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteModelImpl _$$NoteModelImplFromJson(Map<String, dynamic> json) =>
    _$NoteModelImpl(
      authorName: json['authorName'] as String? ?? 'demo',
      content: json['content'] as String,
    );

Map<String, dynamic> _$$NoteModelImplToJson(_$NoteModelImpl instance) =>
    <String, dynamic>{
      'authorName': instance.authorName,
      'content': instance.content,
    };

_$WordNoteResponseImpl _$$WordNoteResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WordNoteResponseImpl(
      wordNote: (json['wordNote'] as List<dynamic>)
          .map((e) => NoteModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      userWordNote: json['userWordNote'] == null
          ? null
          : NoteModel.fromJson(json['userWordNote'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WordNoteResponseImplToJson(
        _$WordNoteResponseImpl instance) =>
    <String, dynamic>{
      'wordNote': instance.wordNote,
      'userWordNote': instance.userWordNote,
    };
