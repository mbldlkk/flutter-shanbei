// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserTokenModelImpl _$$UserTokenModelImplFromJson(Map<String, dynamic> json) =>
    _$UserTokenModelImpl(
      accessToken: json['accessToken'] as String,
    );

Map<String, dynamic> _$$UserTokenModelImplToJson(
        _$UserTokenModelImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
    };

_$UserFormDataImpl _$$UserFormDataImplFromJson(Map<String, dynamic> json) =>
    _$UserFormDataImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$UserFormDataImplToJson(_$UserFormDataImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
