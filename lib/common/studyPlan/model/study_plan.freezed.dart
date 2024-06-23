// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'study_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudyPlanInfo _$StudyPlanInfoFromJson(Map<String, dynamic> json) {
  return _StudyPlanInfo.fromJson(json);
}

/// @nodoc
mixin _$StudyPlanInfo {
  @JsonKey(name: "todayNeedStudyNewWordCount")
  int get todayNeedStudyedNewWord => throw _privateConstructorUsedError;
  @JsonKey(name: "todayNeedReviewWordCount")
  int get todayNeedReviewedWord => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudyPlanInfoCopyWith<StudyPlanInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudyPlanInfoCopyWith<$Res> {
  factory $StudyPlanInfoCopyWith(
          StudyPlanInfo value, $Res Function(StudyPlanInfo) then) =
      _$StudyPlanInfoCopyWithImpl<$Res, StudyPlanInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "todayNeedStudyNewWordCount") int todayNeedStudyedNewWord,
      @JsonKey(name: "todayNeedReviewWordCount") int todayNeedReviewedWord});
}

/// @nodoc
class _$StudyPlanInfoCopyWithImpl<$Res, $Val extends StudyPlanInfo>
    implements $StudyPlanInfoCopyWith<$Res> {
  _$StudyPlanInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todayNeedStudyedNewWord = null,
    Object? todayNeedReviewedWord = null,
  }) {
    return _then(_value.copyWith(
      todayNeedStudyedNewWord: null == todayNeedStudyedNewWord
          ? _value.todayNeedStudyedNewWord
          : todayNeedStudyedNewWord // ignore: cast_nullable_to_non_nullable
              as int,
      todayNeedReviewedWord: null == todayNeedReviewedWord
          ? _value.todayNeedReviewedWord
          : todayNeedReviewedWord // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudyPlanInfoImplCopyWith<$Res>
    implements $StudyPlanInfoCopyWith<$Res> {
  factory _$$StudyPlanInfoImplCopyWith(
          _$StudyPlanInfoImpl value, $Res Function(_$StudyPlanInfoImpl) then) =
      __$$StudyPlanInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "todayNeedStudyNewWordCount") int todayNeedStudyedNewWord,
      @JsonKey(name: "todayNeedReviewWordCount") int todayNeedReviewedWord});
}

/// @nodoc
class __$$StudyPlanInfoImplCopyWithImpl<$Res>
    extends _$StudyPlanInfoCopyWithImpl<$Res, _$StudyPlanInfoImpl>
    implements _$$StudyPlanInfoImplCopyWith<$Res> {
  __$$StudyPlanInfoImplCopyWithImpl(
      _$StudyPlanInfoImpl _value, $Res Function(_$StudyPlanInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todayNeedStudyedNewWord = null,
    Object? todayNeedReviewedWord = null,
  }) {
    return _then(_$StudyPlanInfoImpl(
      todayNeedStudyedNewWord: null == todayNeedStudyedNewWord
          ? _value.todayNeedStudyedNewWord
          : todayNeedStudyedNewWord // ignore: cast_nullable_to_non_nullable
              as int,
      todayNeedReviewedWord: null == todayNeedReviewedWord
          ? _value.todayNeedReviewedWord
          : todayNeedReviewedWord // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudyPlanInfoImpl
    with DiagnosticableTreeMixin
    implements _StudyPlanInfo {
  const _$StudyPlanInfoImpl(
      {@JsonKey(name: "todayNeedStudyNewWordCount")
      required this.todayNeedStudyedNewWord,
      @JsonKey(name: "todayNeedReviewWordCount")
      required this.todayNeedReviewedWord});

  factory _$StudyPlanInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudyPlanInfoImplFromJson(json);

  @override
  @JsonKey(name: "todayNeedStudyNewWordCount")
  final int todayNeedStudyedNewWord;
  @override
  @JsonKey(name: "todayNeedReviewWordCount")
  final int todayNeedReviewedWord;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StudyPlanInfo(todayNeedStudyedNewWord: $todayNeedStudyedNewWord, todayNeedReviewedWord: $todayNeedReviewedWord)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StudyPlanInfo'))
      ..add(DiagnosticsProperty(
          'todayNeedStudyedNewWord', todayNeedStudyedNewWord))
      ..add(
          DiagnosticsProperty('todayNeedReviewedWord', todayNeedReviewedWord));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudyPlanInfoImpl &&
            (identical(
                    other.todayNeedStudyedNewWord, todayNeedStudyedNewWord) ||
                other.todayNeedStudyedNewWord == todayNeedStudyedNewWord) &&
            (identical(other.todayNeedReviewedWord, todayNeedReviewedWord) ||
                other.todayNeedReviewedWord == todayNeedReviewedWord));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, todayNeedStudyedNewWord, todayNeedReviewedWord);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudyPlanInfoImplCopyWith<_$StudyPlanInfoImpl> get copyWith =>
      __$$StudyPlanInfoImplCopyWithImpl<_$StudyPlanInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudyPlanInfoImplToJson(
      this,
    );
  }
}

abstract class _StudyPlanInfo implements StudyPlanInfo {
  const factory _StudyPlanInfo(
      {@JsonKey(name: "todayNeedStudyNewWordCount")
      required final int todayNeedStudyedNewWord,
      @JsonKey(name: "todayNeedReviewWordCount")
      required final int todayNeedReviewedWord}) = _$StudyPlanInfoImpl;

  factory _StudyPlanInfo.fromJson(Map<String, dynamic> json) =
      _$StudyPlanInfoImpl.fromJson;

  @override
  @JsonKey(name: "todayNeedStudyNewWordCount")
  int get todayNeedStudyedNewWord;
  @override
  @JsonKey(name: "todayNeedReviewWordCount")
  int get todayNeedReviewedWord;
  @override
  @JsonKey(ignore: true)
  _$$StudyPlanInfoImplCopyWith<_$StudyPlanInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
