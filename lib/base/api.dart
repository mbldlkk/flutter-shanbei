import 'dart:developer';

import 'package:flutter_application_1/common/auth/local_storage.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';

import 'config.dart';

class BaseApi extends GetConnect {
  final String subUrl;

  BaseApi({required this.subUrl});

  @override
  void onInit() {
    super.onInit();
    httpClient.baseUrl = Appconfig.baseUrl + subUrl;
    httpClient.timeout = const Duration(seconds: 5);
    httpClient.addRequestModifier<dynamic>((req) async {
      log("请求 ${httpClient.baseUrl}");
      return req;
    });

    httpClient.maxAuthRetries = 3;
  }
}

piExceptionHandle(int? statusCode) {
  switch (statusCode) {
    case null:
      throw Exception("网络连接有问题,服务器连接失败,请稍后尝试");
    case 401:
      log("身份验证过期,注销原token");
      AuthLocalStorge.remove();
      Get.offNamed(AppPagesName.baseSignIn);
      throw Exception("请求未通过认证,重新登录");
    case 403:
      throw Exception("操作无权限");
    case 404:
      throw Exception(" 请求错误,服务器找不到该资源");
  }
}

httpStatusExceptionHandle(HttpStatus status) {
  if (status.connectionError) {
    throw Exception("网络连接有问题,服务器连接失败,请稍后尝试");
  } else if (status.isUnauthorized) {
    log("身份验证过期,注销原token");
    AuthLocalStorge.remove();
    Get.offNamed(AppPagesName.baseSignIn);
    throw Exception("请求未通过认证,身份过期,请重新登录");
  } else if (status.isForbidden) {
    throw Exception("操作无权限");
  } else if (status.isServerError) {
    throw Exception("服务器异常");
  } else if (status.isNotFound) {
    throw Exception("请求数据不存在");
  }
}
