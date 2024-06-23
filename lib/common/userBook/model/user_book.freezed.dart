// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserBookRes _$UserBookResFromJson(Map<String, dynamic> json) {
  return _UserBookRes.fromJson(json);
}

/// @nodoc
mixin _$UserBookRes {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get wordCount => throw _privateConstructorUsedError;
  bool get isCurrentLearn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserBookResCopyWith<UserBookRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBookResCopyWith<$Res> {
  factory $UserBookResCopyWith(
          UserBookRes value, $Res Function(UserBookRes) then) =
      _$UserBookResCopyWithImpl<$Res, UserBookRes>;
  @useResult
  $Res call({int id, String name, int wordCount, bool isCurrentLearn});
}

/// @nodoc
class _$UserBookResCopyWithImpl<$Res, $Val extends UserBookRes>
    implements $UserBookResCopyWith<$Res> {
  _$UserBookResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? wordCount = null,
    Object? isCurrentLearn = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      wordCount: null == wordCount
          ? _value.wordCount
          : wordCount // ignore: cast_nullable_to_non_nullable
              as int,
      isCurrentLearn: null == isCurrentLearn
          ? _value.isCurrentLearn
          : isCurrentLearn // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserBookResImplCopyWith<$Res>
    implements $UserBookResCopyWith<$Res> {
  factory _$$UserBookResImplCopyWith(
          _$UserBookResImpl value, $Res Function(_$UserBookResImpl) then) =
      __$$UserBookResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int wordCount, bool isCurrentLearn});
}

/// @nodoc
class __$$UserBookResImplCopyWithImpl<$Res>
    extends _$UserBookResCopyWithImpl<$Res, _$UserBookResImpl>
    implements _$$UserBookResImplCopyWith<$Res> {
  __$$UserBookResImplCopyWithImpl(
      _$UserBookResImpl _value, $Res Function(_$UserBookResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? wordCount = null,
    Object? isCurrentLearn = null,
  }) {
    return _then(_$UserBookResImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      wordCount: null == wordCount
          ? _value.wordCount
          : wordCount // ignore: cast_nullable_to_non_nullable
              as int,
      isCurrentLearn: null == isCurrentLearn
          ? _value.isCurrentLearn
          : isCurrentLearn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserBookResImpl with DiagnosticableTreeMixin implements _UserBookRes {
  const _$UserBookResImpl(
      {required this.id,
      required this.name,
      required this.wordCount,
      required this.isCurrentLearn});

  factory _$UserBookResImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserBookResImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int wordCount;
  @override
  final bool isCurrentLearn;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserBookRes(id: $id, name: $name, wordCount: $wordCount, isCurrentLearn: $isCurrentLearn)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserBookRes'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('wordCount', wordCount))
      ..add(DiagnosticsProperty('isCurrentLearn', isCurrentLearn));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBookResImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.wordCount, wordCount) ||
                other.wordCount == wordCount) &&
            (identical(other.isCurrentLearn, isCurrentLearn) ||
                other.isCurrentLearn == isCurrentLearn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, wordCount, isCurrentLearn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserBookResImplCopyWith<_$UserBookResImpl> get copyWith =>
      __$$UserBookResImplCopyWithImpl<_$UserBookResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserBookResImplToJson(
      this,
    );
  }
}

abstract class _UserBookRes implements UserBookRes {
  const factory _UserBookRes(
      {required final int id,
      required final String name,
      required final int wordCount,
      required final bool isCurrentLearn}) = _$UserBookResImpl;

  factory _UserBookRes.fromJson(Map<String, dynamic> json) =
      _$UserBookResImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get wordCount;
  @override
  bool get isCurrentLearn;
  @override
  @JsonKey(ignore: true)
  _$$UserBookResImplCopyWith<_$UserBookResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
