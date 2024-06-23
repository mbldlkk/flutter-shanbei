// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'study_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudyRecordInfo _$StudyRecordInfoFromJson(Map<String, dynamic> json) {
  return _StudyRecordInfo.fromJson(json);
}

/// @nodoc
mixin _$StudyRecordInfo {
  int get todayStudyedSuccessNewWord => throw _privateConstructorUsedError;
  int get todayReviewedSuccessWord => throw _privateConstructorUsedError;
  int get currentBookStudyedSuccessCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudyRecordInfoCopyWith<StudyRecordInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudyRecordInfoCopyWith<$Res> {
  factory $StudyRecordInfoCopyWith(
          StudyRecordInfo value, $Res Function(StudyRecordInfo) then) =
      _$StudyRecordInfoCopyWithImpl<$Res, StudyRecordInfo>;
  @useResult
  $Res call(
      {int todayStudyedSuccessNewWord,
      int todayReviewedSuccessWord,
      int currentBookStudyedSuccessCount});
}

/// @nodoc
class _$StudyRecordInfoCopyWithImpl<$Res, $Val extends StudyRecordInfo>
    implements $StudyRecordInfoCopyWith<$Res> {
  _$StudyRecordInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todayStudyedSuccessNewWord = null,
    Object? todayReviewedSuccessWord = null,
    Object? currentBookStudyedSuccessCount = null,
  }) {
    return _then(_value.copyWith(
      todayStudyedSuccessNewWord: null == todayStudyedSuccessNewWord
          ? _value.todayStudyedSuccessNewWord
          : todayStudyedSuccessNewWord // ignore: cast_nullable_to_non_nullable
              as int,
      todayReviewedSuccessWord: null == todayReviewedSuccessWord
          ? _value.todayReviewedSuccessWord
          : todayReviewedSuccessWord // ignore: cast_nullable_to_non_nullable
              as int,
      currentBookStudyedSuccessCount: null == currentBookStudyedSuccessCount
          ? _value.currentBookStudyedSuccessCount
          : currentBookStudyedSuccessCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudyRecordInfoImplCopyWith<$Res>
    implements $StudyRecordInfoCopyWith<$Res> {
  factory _$$StudyRecordInfoImplCopyWith(_$StudyRecordInfoImpl value,
          $Res Function(_$StudyRecordInfoImpl) then) =
      __$$StudyRecordInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int todayStudyedSuccessNewWord,
      int todayReviewedSuccessWord,
      int currentBookStudyedSuccessCount});
}

/// @nodoc
class __$$StudyRecordInfoImplCopyWithImpl<$Res>
    extends _$StudyRecordInfoCopyWithImpl<$Res, _$StudyRecordInfoImpl>
    implements _$$StudyRecordInfoImplCopyWith<$Res> {
  __$$StudyRecordInfoImplCopyWithImpl(
      _$StudyRecordInfoImpl _value, $Res Function(_$StudyRecordInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todayStudyedSuccessNewWord = null,
    Object? todayReviewedSuccessWord = null,
    Object? currentBookStudyedSuccessCount = null,
  }) {
    return _then(_$StudyRecordInfoImpl(
      todayStudyedSuccessNewWord: null == todayStudyedSuccessNewWord
          ? _value.todayStudyedSuccessNewWord
          : todayStudyedSuccessNewWord // ignore: cast_nullable_to_non_nullable
              as int,
      todayReviewedSuccessWord: null == todayReviewedSuccessWord
          ? _value.todayReviewedSuccessWord
          : todayReviewedSuccessWord // ignore: cast_nullable_to_non_nullable
              as int,
      currentBookStudyedSuccessCount: null == currentBookStudyedSuccessCount
          ? _value.currentBookStudyedSuccessCount
          : currentBookStudyedSuccessCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudyRecordInfoImpl
    with DiagnosticableTreeMixin
    implements _StudyRecordInfo {
  const _$StudyRecordInfoImpl(
      {required this.todayStudyedSuccessNewWord,
      required this.todayReviewedSuccessWord,
      required this.currentBookStudyedSuccessCount});

  factory _$StudyRecordInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudyRecordInfoImplFromJson(json);

  @override
  final int todayStudyedSuccessNewWord;
  @override
  final int todayReviewedSuccessWord;
  @override
  final int currentBookStudyedSuccessCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StudyRecordInfo(todayStudyedSuccessNewWord: $todayStudyedSuccessNewWord, todayReviewedSuccessWord: $todayReviewedSuccessWord, currentBookStudyedSuccessCount: $currentBookStudyedSuccessCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StudyRecordInfo'))
      ..add(DiagnosticsProperty(
          'todayStudyedSuccessNewWord', todayStudyedSuccessNewWord))
      ..add(DiagnosticsProperty(
          'todayReviewedSuccessWord', todayReviewedSuccessWord))
      ..add(DiagnosticsProperty(
          'currentBookStudyedSuccessCount', currentBookStudyedSuccessCount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudyRecordInfoImpl &&
            (identical(other.todayStudyedSuccessNewWord,
                    todayStudyedSuccessNewWord) ||
                other.todayStudyedSuccessNewWord ==
                    todayStudyedSuccessNewWord) &&
            (identical(
                    other.todayReviewedSuccessWord, todayReviewedSuccessWord) ||
                other.todayReviewedSuccessWord == todayReviewedSuccessWord) &&
            (identical(other.currentBookStudyedSuccessCount,
                    currentBookStudyedSuccessCount) ||
                other.currentBookStudyedSuccessCount ==
                    currentBookStudyedSuccessCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, todayStudyedSuccessNewWord,
      todayReviewedSuccessWord, currentBookStudyedSuccessCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudyRecordInfoImplCopyWith<_$StudyRecordInfoImpl> get copyWith =>
      __$$StudyRecordInfoImplCopyWithImpl<_$StudyRecordInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudyRecordInfoImplToJson(
      this,
    );
  }
}

abstract class _StudyRecordInfo implements StudyRecordInfo {
  const factory _StudyRecordInfo(
          {required final int todayStudyedSuccessNewWord,
          required final int todayReviewedSuccessWord,
          required final int currentBookStudyedSuccessCount}) =
      _$StudyRecordInfoImpl;

  factory _StudyRecordInfo.fromJson(Map<String, dynamic> json) =
      _$StudyRecordInfoImpl.fromJson;

  @override
  int get todayStudyedSuccessNewWord;
  @override
  int get todayReviewedSuccessWord;
  @override
  int get currentBookStudyedSuccessCount;
  @override
  @JsonKey(ignore: true)
  _$$StudyRecordInfoImplCopyWith<_$StudyRecordInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
