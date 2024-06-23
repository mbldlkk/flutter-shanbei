import 'dart:developer';

import 'package:flutter_application_1/common/auth/api.dart';
import 'package:flutter_application_1/common/auth/local_storage.dart';
import 'package:flutter_application_1/common/checkIn/api.dart';
import 'package:flutter_application_1/common/checkIn/local_storage.dart';
import 'package:flutter_application_1/common/studyPlan/api.dart';
import 'package:flutter_application_1/common/studyPlan/local_storage.dart';
import 'package:flutter_application_1/common/studyRecord/api.dart';
import 'package:flutter_application_1/common/studyRecord/local_storage.dart';
import 'package:flutter_application_1/common/user/model/user.dart';
import 'package:flutter_application_1/common/userBook/api.dart';
import 'package:flutter_application_1/common/userBook/local_storage.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';
import 'dart:developer' as developer;

class EmailPageController extends GetxController {
  //通过get 获取 auth存储库的实例
  final authApi = Get.find<AuthApi>();
  final userBookApi = Get.find<UserBookApi>();
  final studyPlanApi = Get.find<StudyPlanApi>();
  final studyRecordApi = Get.find<StudyRecordApi>();
  final checkInApi = Get.find<CheckInApi>();

  final isShowPassword = false.obs;

  final email = Rxn<String>();
  final emailErrorText = Rxn<String>();
  final isEmailValid = Rx<bool>(false);

  final password = Rxn<String>();
  final passwordErrorText = Rxn<String>();
  final isPasswordValid = Rx<bool>(false);

  //是否同意协议
  final isAgree = false.obs;
  final checkboxErrorText = Rxn<String>();

  //是否允许用户进行登录操作
  final isPass = false.obs;

  @override
  void onInit() {
    super.onInit();
    // 内置 节流 监控回调, 验证用户输入邮箱
    debounce(email, time: const Duration(seconds: 1), (_) {
      emailValidate();
    });

    //验证用户输入密码
    debounce(password, time: const Duration(seconds: 1), (callback) {
      passwordValidate();
    });

    debounce(isAgree, time: const Duration(milliseconds: 500), (callback) {
      isAgreeValidate();
    });
  }

  void setEmail(String value) {
    email.value = value;
  }

  void setPassword(String value) {
    password.value = value;
  }

  emailValidate() {
    final value = email.value;
    if (value == null || value.isEmpty) {
      emailErrorText.value = "邮箱不能为空";
      isEmailValid.value = false;
    } else if (!value.isEmail) {
      emailErrorText.value = "邮箱账号不正确";
      isEmailValid.value = false;
    } else {
      emailErrorText.value = null;
      isEmailValid.value = true;
    }

    //输完邮箱判断 全局是否通过要求
    isPassValidate();
    return;
  }

  passwordValidate() {
    final value = password.value;
    if (value == null || value.isEmpty) {
      passwordErrorText.value = "密码不能为空";
      isPasswordValid.value = false;
    } else if (value.length < 4) {
      passwordErrorText.value = "密码至少4位";
      isPasswordValid.value = false;
    } else {
      passwordErrorText.value = null;
      isPasswordValid.value = true;
    }
    isPassValidate();
    return;
  }

  isAgreeValidate() {
    if (!isAgree.value) {
      checkboxErrorText.value = "请勾选用户协议!";
    } else {
      checkboxErrorText.value = null;
    }
    isPassValidate();
    return;
  }

  isPassValidate() {
    if (isEmailValid.value == true &&
        isPasswordValid.value == true &&
        isAgree.value == true) {
      isPass.value = true;
      return;
    }
    isPass.value = false;
  }

  validate() {
    if (isPass.value) {
      log("允许登录 ${isPass.value}");
      signInByEmail();
      return;
    }
    log("验证失败,不允许登录");
    //说明用户未通过验证, 显示错误文本
    isAgreeValidate();
    emailValidate();
    passwordValidate();
  }

  //用户输入是否通过验证
  final _isValidationPass = false.obs;
  bool get isValidationPass => _isValidationPass.value;
  set isValidationPass(bool value) => _isValidationPass.value = value;

  Future<void> signInByEmail() async {
    try {
      //登录后提示用户
      Get.snackbar('登录中...', "邮箱 ${email.value!}");

      final userToken =
          await authApi.signInWithEmail(email.value!, password.value!);
      AuthLocalStorge.write(userToken.accessToken);

      // 暂定 考虑当前用户在其他平台已有书籍的情况
      final userBook = await userBookApi.fetchUserBook();
      final allbooks = userBook.allbooks;

      if (allbooks.isEmpty) {
        Get.toNamed(AppPagesName.selectBook);

        return;
      }
      log("登录成功, 获取最新数据");
      UserBookLocalStorage.write(userBook);

      //获取最新数据..
      await fetchLatestServerData();

      Get.toNamed(AppPagesName.index);
      // Get.toNamed(page);
    } catch (e, s) {
      developer.log("邮箱登录失败:  $e stack: $s");
      Get.snackbar("用户登录/注册错误", "输入的用户名或密码有误,再确认一下"); //暂时只考虑了404, 还有 服务器错误等情况
    }
  }

  signUpWithEmail() {
    authApi
        .signUp(UserFormData(email: email.value!, password: password.value!));
    return;
  }

  void switchCheck() {
    isAgree.value = !isAgree.value;
  }

  void switchShowPassword() {
    isShowPassword.value = !isShowPassword.value;
  }

  @override
  void onClose() {
    super.onClose();

    developer.log("email 页面控制器删除");
  }

  fetchLatestServerData() async {
    final studyPlanInfo = await studyPlanApi.fetchTodayStudyPlan();
    StudyPlanLocalStorge.write(studyPlanInfo);

    //学习记录
    final studyRecordInfo = await studyRecordApi.getCurrentBookProgress();
    StudyRecordLocalStorge.write(studyRecordInfo);

    //服务器打卡数据
    final checkInTimes = await checkInApi.fetchCheckInTimes() as int;
    if (checkInTimes > 0) {
      CheckInLocalStore.write(checkInTimes);
    }
  }
}
