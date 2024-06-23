// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_in.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckInModel _$CheckInModelFromJson(Map<String, dynamic> json) {
  return _CheckInModel.fromJson(json);
}

/// @nodoc
mixin _$CheckInModel {
  int get chechInTimes => throw _privateConstructorUsedError;
  String get latestCheckInDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckInModelCopyWith<CheckInModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckInModelCopyWith<$Res> {
  factory $CheckInModelCopyWith(
          CheckInModel value, $Res Function(CheckInModel) then) =
      _$CheckInModelCopyWithImpl<$Res, CheckInModel>;
  @useResult
  $Res call({int chechInTimes, String latestCheckInDate});
}

/// @nodoc
class _$CheckInModelCopyWithImpl<$Res, $Val extends CheckInModel>
    implements $CheckInModelCopyWith<$Res> {
  _$CheckInModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chechInTimes = null,
    Object? latestCheckInDate = null,
  }) {
    return _then(_value.copyWith(
      chechInTimes: null == chechInTimes
          ? _value.chechInTimes
          : chechInTimes // ignore: cast_nullable_to_non_nullable
              as int,
      latestCheckInDate: null == latestCheckInDate
          ? _value.latestCheckInDate
          : latestCheckInDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckInModelImplCopyWith<$Res>
    implements $CheckInModelCopyWith<$Res> {
  factory _$$CheckInModelImplCopyWith(
          _$CheckInModelImpl value, $Res Function(_$CheckInModelImpl) then) =
      __$$CheckInModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int chechInTimes, String latestCheckInDate});
}

/// @nodoc
class __$$CheckInModelImplCopyWithImpl<$Res>
    extends _$CheckInModelCopyWithImpl<$Res, _$CheckInModelImpl>
    implements _$$CheckInModelImplCopyWith<$Res> {
  __$$CheckInModelImplCopyWithImpl(
      _$CheckInModelImpl _value, $Res Function(_$CheckInModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chechInTimes = null,
    Object? latestCheckInDate = null,
  }) {
    return _then(_$CheckInModelImpl(
      chechInTimes: null == chechInTimes
          ? _value.chechInTimes
          : chechInTimes // ignore: cast_nullable_to_non_nullable
              as int,
      latestCheckInDate: null == latestCheckInDate
          ? _value.latestCheckInDate
          : latestCheckInDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckInModelImpl implements _CheckInModel {
  const _$CheckInModelImpl(
      {required this.chechInTimes, required this.latestCheckInDate});

  factory _$CheckInModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckInModelImplFromJson(json);

  @override
  final int chechInTimes;
  @override
  final String latestCheckInDate;

  @override
  String toString() {
    return 'CheckInModel(chechInTimes: $chechInTimes, latestCheckInDate: $latestCheckInDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckInModelImpl &&
            (identical(other.chechInTimes, chechInTimes) ||
                other.chechInTimes == chechInTimes) &&
            (identical(other.latestCheckInDate, latestCheckInDate) ||
                other.latestCheckInDate == latestCheckInDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, chechInTimes, latestCheckInDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckInModelImplCopyWith<_$CheckInModelImpl> get copyWith =>
      __$$CheckInModelImplCopyWithImpl<_$CheckInModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckInModelImplToJson(
      this,
    );
  }
}

abstract class _CheckInModel implements CheckInModel {
  const factory _CheckInModel(
      {required final int chechInTimes,
      required final String latestCheckInDate}) = _$CheckInModelImpl;

  factory _CheckInModel.fromJson(Map<String, dynamic> json) =
      _$CheckInModelImpl.fromJson;

  @override
  int get chechInTimes;
  @override
  String get latestCheckInDate;
  @override
  @JsonKey(ignore: true)
  _$$CheckInModelImplCopyWith<_$CheckInModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
