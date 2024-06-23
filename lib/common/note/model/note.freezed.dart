// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NoteModel _$NoteModelFromJson(Map<String, dynamic> json) {
  return _NoteModel.fromJson(json);
}

/// @nodoc
mixin _$NoteModel {
  @JsonKey(defaultValue: "demo")
  String get authorName => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteModelCopyWith<NoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteModelCopyWith<$Res> {
  factory $NoteModelCopyWith(NoteModel value, $Res Function(NoteModel) then) =
      _$NoteModelCopyWithImpl<$Res, NoteModel>;
  @useResult
  $Res call({@JsonKey(defaultValue: "demo") String authorName, String content});
}

/// @nodoc
class _$NoteModelCopyWithImpl<$Res, $Val extends NoteModel>
    implements $NoteModelCopyWith<$Res> {
  _$NoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorName = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      authorName: null == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteModelImplCopyWith<$Res>
    implements $NoteModelCopyWith<$Res> {
  factory _$$NoteModelImplCopyWith(
          _$NoteModelImpl value, $Res Function(_$NoteModelImpl) then) =
      __$$NoteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(defaultValue: "demo") String authorName, String content});
}

/// @nodoc
class __$$NoteModelImplCopyWithImpl<$Res>
    extends _$NoteModelCopyWithImpl<$Res, _$NoteModelImpl>
    implements _$$NoteModelImplCopyWith<$Res> {
  __$$NoteModelImplCopyWithImpl(
      _$NoteModelImpl _value, $Res Function(_$NoteModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorName = null,
    Object? content = null,
  }) {
    return _then(_$NoteModelImpl(
      authorName: null == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteModelImpl with DiagnosticableTreeMixin implements _NoteModel {
  const _$NoteModelImpl(
      {@JsonKey(defaultValue: "demo") required this.authorName,
      required this.content});

  factory _$NoteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteModelImplFromJson(json);

  @override
  @JsonKey(defaultValue: "demo")
  final String authorName;
  @override
  final String content;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NoteModel(authorName: $authorName, content: $content)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NoteModel'))
      ..add(DiagnosticsProperty('authorName', authorName))
      ..add(DiagnosticsProperty('content', content));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteModelImpl &&
            (identical(other.authorName, authorName) ||
                other.authorName == authorName) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, authorName, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteModelImplCopyWith<_$NoteModelImpl> get copyWith =>
      __$$NoteModelImplCopyWithImpl<_$NoteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteModelImplToJson(
      this,
    );
  }
}

abstract class _NoteModel implements NoteModel {
  const factory _NoteModel(
      {@JsonKey(defaultValue: "demo") required final String authorName,
      required final String content}) = _$NoteModelImpl;

  factory _NoteModel.fromJson(Map<String, dynamic> json) =
      _$NoteModelImpl.fromJson;

  @override
  @JsonKey(defaultValue: "demo")
  String get authorName;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$NoteModelImplCopyWith<_$NoteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WordNoteResponse _$WordNoteResponseFromJson(Map<String, dynamic> json) {
  return _WordNoteResponse.fromJson(json);
}

/// @nodoc
mixin _$WordNoteResponse {
  List<NoteModel> get wordNote => throw _privateConstructorUsedError;
  NoteModel? get userWordNote => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordNoteResponseCopyWith<WordNoteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordNoteResponseCopyWith<$Res> {
  factory $WordNoteResponseCopyWith(
          WordNoteResponse value, $Res Function(WordNoteResponse) then) =
      _$WordNoteResponseCopyWithImpl<$Res, WordNoteResponse>;
  @useResult
  $Res call({List<NoteModel> wordNote, NoteModel? userWordNote});

  $NoteModelCopyWith<$Res>? get userWordNote;
}

/// @nodoc
class _$WordNoteResponseCopyWithImpl<$Res, $Val extends WordNoteResponse>
    implements $WordNoteResponseCopyWith<$Res> {
  _$WordNoteResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordNote = null,
    Object? userWordNote = freezed,
  }) {
    return _then(_value.copyWith(
      wordNote: null == wordNote
          ? _value.wordNote
          : wordNote // ignore: cast_nullable_to_non_nullable
              as List<NoteModel>,
      userWordNote: freezed == userWordNote
          ? _value.userWordNote
          : userWordNote // ignore: cast_nullable_to_non_nullable
              as NoteModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteModelCopyWith<$Res>? get userWordNote {
    if (_value.userWordNote == null) {
      return null;
    }

    return $NoteModelCopyWith<$Res>(_value.userWordNote!, (value) {
      return _then(_value.copyWith(userWordNote: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WordNoteResponseImplCopyWith<$Res>
    implements $WordNoteResponseCopyWith<$Res> {
  factory _$$WordNoteResponseImplCopyWith(_$WordNoteResponseImpl value,
          $Res Function(_$WordNoteResponseImpl) then) =
      __$$WordNoteResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NoteModel> wordNote, NoteModel? userWordNote});

  @override
  $NoteModelCopyWith<$Res>? get userWordNote;
}

/// @nodoc
class __$$WordNoteResponseImplCopyWithImpl<$Res>
    extends _$WordNoteResponseCopyWithImpl<$Res, _$WordNoteResponseImpl>
    implements _$$WordNoteResponseImplCopyWith<$Res> {
  __$$WordNoteResponseImplCopyWithImpl(_$WordNoteResponseImpl _value,
      $Res Function(_$WordNoteResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wordNote = null,
    Object? userWordNote = freezed,
  }) {
    return _then(_$WordNoteResponseImpl(
      wordNote: null == wordNote
          ? _value._wordNote
          : wordNote // ignore: cast_nullable_to_non_nullable
              as List<NoteModel>,
      userWordNote: freezed == userWordNote
          ? _value.userWordNote
          : userWordNote // ignore: cast_nullable_to_non_nullable
              as NoteModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WordNoteResponseImpl
    with DiagnosticableTreeMixin
    implements _WordNoteResponse {
  const _$WordNoteResponseImpl(
      {required final List<NoteModel> wordNote, required this.userWordNote})
      : _wordNote = wordNote;

  factory _$WordNoteResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WordNoteResponseImplFromJson(json);

  final List<NoteModel> _wordNote;
  @override
  List<NoteModel> get wordNote {
    if (_wordNote is EqualUnmodifiableListView) return _wordNote;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wordNote);
  }

  @override
  final NoteModel? userWordNote;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WordNoteResponse(wordNote: $wordNote, userWordNote: $userWordNote)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WordNoteResponse'))
      ..add(DiagnosticsProperty('wordNote', wordNote))
      ..add(DiagnosticsProperty('userWordNote', userWordNote));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordNoteResponseImpl &&
            const DeepCollectionEquality().equals(other._wordNote, _wordNote) &&
            (identical(other.userWordNote, userWordNote) ||
                other.userWordNote == userWordNote));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_wordNote), userWordNote);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WordNoteResponseImplCopyWith<_$WordNoteResponseImpl> get copyWith =>
      __$$WordNoteResponseImplCopyWithImpl<_$WordNoteResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WordNoteResponseImplToJson(
      this,
    );
  }
}

abstract class _WordNoteResponse implements WordNoteResponse {
  const factory _WordNoteResponse(
      {required final List<NoteModel> wordNote,
      required final NoteModel? userWordNote}) = _$WordNoteResponseImpl;

  factory _WordNoteResponse.fromJson(Map<String, dynamic> json) =
      _$WordNoteResponseImpl.fromJson;

  @override
  List<NoteModel> get wordNote;
  @override
  NoteModel? get userWordNote;
  @override
  @JsonKey(ignore: true)
  _$$WordNoteResponseImplCopyWith<_$WordNoteResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
