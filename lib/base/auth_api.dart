import 'package:flutter_application_1/common/auth/local_storage.dart';

import 'package:get/get.dart';

import 'config.dart';

//在基础之上追加 请求拦截和响应拦截
class BaseAuthAPi extends GetConnect {
  final String subUrl;
  // final bool isAuthenticate;

  BaseAuthAPi({required this.subUrl});

  @override
  void onInit() {
    super.onInit();
    httpClient.baseUrl = Appconfig.baseUrl + subUrl;
    httpClient.timeout = const Duration(seconds: 5);

    //请求前 追加token
    httpClient.addRequestModifier<dynamic>((request) {
      request.headers["Authorization"] = "Bearer ${AuthLocalStorge.read()}";
      return request;
    });
  }
}
