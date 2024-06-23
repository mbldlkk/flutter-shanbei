import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

enum SignInKind { phoneNumber, email }

@freezed
class UserTokenModel with _$UserTokenModel {
  const factory UserTokenModel({
    // required String id,
    // required String username,
    // required String email,
    required String accessToken,
    // required DateTime expiedAt,
    // book          book[]
  }) = _UserTokenModel;

  factory UserTokenModel.fromJson(Map<String, Object?> json) =>
      _$UserTokenModelFromJson(json);
}

@freezed
class UserFormData with _$UserFormData {
  const factory UserFormData({
    required String email,
    required String password,
  }) = _UserFormData;

  factory UserFormData.fromJson(Map<String, Object?> json) =>
      _$UserFormDataFromJson(json);
}
