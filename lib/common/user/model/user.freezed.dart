// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserTokenModel _$UserTokenModelFromJson(Map<String, dynamic> json) {
  return _UserTokenModel.fromJson(json);
}

/// @nodoc
mixin _$UserTokenModel {
// required String id,
// required String username,
// required String email,
  String get accessToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserTokenModelCopyWith<UserTokenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTokenModelCopyWith<$Res> {
  factory $UserTokenModelCopyWith(
          UserTokenModel value, $Res Function(UserTokenModel) then) =
      _$UserTokenModelCopyWithImpl<$Res, UserTokenModel>;
  @useResult
  $Res call({String accessToken});
}

/// @nodoc
class _$UserTokenModelCopyWithImpl<$Res, $Val extends UserTokenModel>
    implements $UserTokenModelCopyWith<$Res> {
  _$UserTokenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserTokenModelImplCopyWith<$Res>
    implements $UserTokenModelCopyWith<$Res> {
  factory _$$UserTokenModelImplCopyWith(_$UserTokenModelImpl value,
          $Res Function(_$UserTokenModelImpl) then) =
      __$$UserTokenModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken});
}

/// @nodoc
class __$$UserTokenModelImplCopyWithImpl<$Res>
    extends _$UserTokenModelCopyWithImpl<$Res, _$UserTokenModelImpl>
    implements _$$UserTokenModelImplCopyWith<$Res> {
  __$$UserTokenModelImplCopyWithImpl(
      _$UserTokenModelImpl _value, $Res Function(_$UserTokenModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
  }) {
    return _then(_$UserTokenModelImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserTokenModelImpl
    with DiagnosticableTreeMixin
    implements _UserTokenModel {
  const _$UserTokenModelImpl({required this.accessToken});

  factory _$UserTokenModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserTokenModelImplFromJson(json);

// required String id,
// required String username,
// required String email,
  @override
  final String accessToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserTokenModel(accessToken: $accessToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserTokenModel'))
      ..add(DiagnosticsProperty('accessToken', accessToken));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserTokenModelImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserTokenModelImplCopyWith<_$UserTokenModelImpl> get copyWith =>
      __$$UserTokenModelImplCopyWithImpl<_$UserTokenModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserTokenModelImplToJson(
      this,
    );
  }
}

abstract class _UserTokenModel implements UserTokenModel {
  const factory _UserTokenModel({required final String accessToken}) =
      _$UserTokenModelImpl;

  factory _UserTokenModel.fromJson(Map<String, dynamic> json) =
      _$UserTokenModelImpl.fromJson;

  @override // required String id,
// required String username,
// required String email,
  String get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$UserTokenModelImplCopyWith<_$UserTokenModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserFormData _$UserFormDataFromJson(Map<String, dynamic> json) {
  return _UserFormData.fromJson(json);
}

/// @nodoc
mixin _$UserFormData {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserFormDataCopyWith<UserFormData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFormDataCopyWith<$Res> {
  factory $UserFormDataCopyWith(
          UserFormData value, $Res Function(UserFormData) then) =
      _$UserFormDataCopyWithImpl<$Res, UserFormData>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$UserFormDataCopyWithImpl<$Res, $Val extends UserFormData>
    implements $UserFormDataCopyWith<$Res> {
  _$UserFormDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserFormDataImplCopyWith<$Res>
    implements $UserFormDataCopyWith<$Res> {
  factory _$$UserFormDataImplCopyWith(
          _$UserFormDataImpl value, $Res Function(_$UserFormDataImpl) then) =
      __$$UserFormDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$UserFormDataImplCopyWithImpl<$Res>
    extends _$UserFormDataCopyWithImpl<$Res, _$UserFormDataImpl>
    implements _$$UserFormDataImplCopyWith<$Res> {
  __$$UserFormDataImplCopyWithImpl(
      _$UserFormDataImpl _value, $Res Function(_$UserFormDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$UserFormDataImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserFormDataImpl with DiagnosticableTreeMixin implements _UserFormData {
  const _$UserFormDataImpl({required this.email, required this.password});

  factory _$UserFormDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserFormDataImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserFormData(email: $email, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserFormData'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserFormDataImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserFormDataImplCopyWith<_$UserFormDataImpl> get copyWith =>
      __$$UserFormDataImplCopyWithImpl<_$UserFormDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserFormDataImplToJson(
      this,
    );
  }
}

abstract class _UserFormData implements UserFormData {
  const factory _UserFormData(
      {required final String email,
      required final String password}) = _$UserFormDataImpl;

  factory _UserFormData.fromJson(Map<String, dynamic> json) =
      _$UserFormDataImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$UserFormDataImplCopyWith<_$UserFormDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
