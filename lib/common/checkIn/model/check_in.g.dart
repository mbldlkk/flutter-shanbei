// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_in.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckInModelImpl _$$CheckInModelImplFromJson(Map<String, dynamic> json) =>
    _$CheckInModelImpl(
      chechInTimes: (json['chechInTimes'] as num).toInt(),
      latestCheckInDate: json['latestCheckInDate'] as String,
    );

Map<String, dynamic> _$$CheckInModelImplToJson(_$CheckInModelImpl instance) =>
    <String, dynamic>{
      'chechInTimes': instance.chechInTimes,
      'latestCheckInDate': instance.latestCheckInDate,
    };
