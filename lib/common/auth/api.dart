import 'dart:async';
import 'dart:developer';

import 'package:flutter_application_1/base/api.dart';

import '../user/model/user.dart';

const subUrl = "/auth";

class AuthApi extends BaseApi {
  AuthApi() : super(subUrl: subUrl);

  Future<void> sendCaptcha(String userId, SignInKind kind) async {
    final res = await post(
      "",
      {"id": userId, "kind": kind.index},
    );
    log(res.toString());
    //后端待完成

    return;
  }

  signInWithCaptcha() {}

  // 不同于webui, 直接放在 登录上实现即可
  signUp(UserFormData userFormData) {
    // post("signUp", userFormData.toJson());
  }

  Future<UserTokenModel> signInWithEmail(String email, String password) async {
    final response = await post(
      "/signIn",
      {"email": email, "password": password},
    );

    httpStatusExceptionHandle(response.status);

    return UserTokenModel.fromJson(response.body);
  }
}
