import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/auth/wdiget/background_video_controller.dart';

import 'package:flutter_application_1/routes.dart';
import 'package:flutter_application_1/styles.dart';
import 'package:get/get.dart';

class BaseSignIn extends StatelessWidget {
  const BaseSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 40,
                color: AppColor.green,
                child: const Center(
                  child: Text(
                    "图标",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 55),
                child: Text(
                  "Every word counts here",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 6.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "扇贝单词",
                style: TextStyle(
                  fontSize: 28,
                  letterSpacing: 10,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 6.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ],
                ),
              ),
              const Text(
                "记住单词, 记录改变",
                style: TextStyle(
                  fontSize: 28,
                  letterSpacing: 10,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 6.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  // mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                        child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: AppColor.green,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0)),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10)),
                            onPressed: () {
                              Get.toNamed(AppPagesName.emailSignIn);
                              videoPlayerController.pause();
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.email_outlined,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "邮箱登录",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      letterSpacing: 2),
                                )
                              ],
                            )))
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                      shape: const CircleBorder(),
                      activeColor: AppColor.green,
                      checkColor: Colors.white,
                      value: true,
                      onChanged: (a) {}),
                  const Text("我已经阅读隐私协议")
                ],
              )
              // Radio(value: value, groupValue: groupValue, onChanged: onChanged)
            ],
          )
        ],
      ),
    ));
  }
}
