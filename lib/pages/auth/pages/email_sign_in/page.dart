import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:flutter_application_1/pages/auth/pages/email_sign_in/controller.dart';
import 'package:flutter_application_1/pages/auth/wdiget/background_video_controller.dart';
import 'package:flutter_application_1/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class EmailSignInPage extends StatelessWidget {
  const EmailSignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Get.find<EmailPageController>();
    final formKey = GlobalKey<FormState>();

    log("controller : ${authController.toString()}");

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            videoPlayerController.play();
            Get.back();
          },
        ),
        titleSpacing: -10,
        title: const Text(
          "返回",
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "账号密码登录",
              style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "未注册的邮箱将自动注册",
              style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 2,
                  color: Colors.grey),
            ),
            const SizedBox(
              height: 30,
            ),
            Form(
                key: formKey,
                child: Column(
                  children: [
                    Obx(
                      () => TextFormField(
                        onChanged: (value) {
                          authController.setEmail(value);
                        },
                        cursorColor: Colors.blue[400],
                        scrollPadding: EdgeInsets.zero,
                        decoration: InputDecoration(
                            errorText: authController.emailErrorText.value,
                            prefixIconConstraints: const BoxConstraints(
                                minHeight: 0, minWidth: 48),
                            focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: AppColor.green)),
                            constraints:
                                const BoxConstraints(minHeight: 0, minWidth: 0),
                            contentPadding: const EdgeInsets.only(
                                bottom: 0, left: 0, right: 0),
                            labelStyle: const TextStyle(color: AppColor.green),
                            hintText: "请输入邮箱",
                            prefixIcon: const Icon(
                              Icons.email_outlined,
                              size: 25,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    Obx(
                      () => TextFormField(
                          obscureText: authController.isShowPassword.value
                              ? false
                              : true,
                          onChanged: (value) {
                            authController.setPassword(value);
                          },
                          cursorColor: Colors.blue[400],
                          decoration: InputDecoration(
                            errorText: authController.passwordErrorText.value,
                            prefixIconConstraints: const BoxConstraints(
                                minHeight: 0, minWidth: 48),
                            suffixIconConstraints:
                                const BoxConstraints(minHeight: 0, minWidth: 0),
                            hintText: "请输入密码",
                            prefixIcon: const Icon(Icons.lock_clock_outlined),
                            suffixIcon: IconButton(
                                padding: const EdgeInsets.all(8),
                                onPressed: () {
                                  authController.switchShowPassword();
                                  log("切换密码可视化");
                                },
                                icon: authController.isShowPassword.value
                                    ? const FaIcon(
                                        FontAwesomeIcons.eye,
                                        size: 22,
                                      )
                                    : const FaIcon(
                                        FontAwesomeIcons.eyeSlash,
                                        size: 22,
                                      )),
                          )),
                    )
                  ],
                )),
            const SizedBox(
              height: 22,
            ),
            Row(children: [
              SizedBox(
                width: 32,
                height: 28,
                child: Obx(() => Checkbox(
                    activeColor: AppColor.green,
                    value: authController.isAgree.value,
                    onChanged: (value) {
                      authController.switchCheck();
                    })),
              ),
              RichText(
                  text: const TextSpan(
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 13.0,
                          fontWeight: FontWeight.w700),
                      text: "登录注册代表同意",
                      children: [
                    TextSpan(
                        text: " 用户使用协议 ",
                        style: TextStyle(
                            color: AppColor.green,
                            fontWeight: FontWeight.w700)),
                    TextSpan(text: "和"),
                    TextSpan(
                        text: " 隐私协议",
                        style: TextStyle(
                            color: AppColor.green, fontWeight: FontWeight.w700))
                  ])),
            ]),
            Obx(() {
              if (authController.checkboxErrorText.value != null) {
                return const Text(
                  "请勾选用户协议",
                  style: TextStyle(color: Color(0xFFBA1E1E), fontSize: 13),
                );
              }
              return const SizedBox();
            }),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Obx(() => ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            backgroundColor: authController.isPass.value
                                ? AppColor.green
                                : Colors.grey[300]),
                        onPressed: () {
                          authController.validate();
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Text("同意协议并登录",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600)),
                        ))),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {}, child: const Text("手机快速登录 >"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
