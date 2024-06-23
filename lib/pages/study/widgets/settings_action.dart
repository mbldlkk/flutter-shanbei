import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/settings/wdiget/index.dart';

import "package:get/get.dart";
import 'package:flutter_application_1/common/settings/controller.dart';

Widget settingsAction(context) {
  return IconButton(
      onPressed: () {
        Get.lazyPut(() => SettingsController());

        showModalBottomSheet(
            context: context,
            builder: (context) {
              return Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Obx(() => Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10.0, bottom: 15),
                              child: Text(
                                "快捷设置",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            studyMode(),
                            wordPronounce(),
                            wordAutoPronounce(),
                            sentenceAutoPronounce(),
                            wordPageFontSize(),
                            extContentShowSeq(),
                            const DecoratedBox(
                              decoration:
                                  BoxDecoration(color: Color(0xFFF8F5F8)),
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.0, bottom: 3, top: 3, right: 0),
                                  child: Text(
                                    "更多设置请在 [我的-学习设置] 中操作",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w700),
                                  )),
                            )
                          ],
                        )),
                  ));

              //  Material(
              //   child: Container(
              //       width: double.infinity,
              //       padding: const EdgeInsets.symmetric(
              //           vertical: 25, horizontal: 15),
              //       height: 100, //这个控制对话框高度, 但如果是 响应式就好了.
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(40)),
              //       child: ),
              // ));
            });

        return;
      },
      icon: const Icon(Icons.settings_outlined));
}

demoShowdialog(context) {
  showDialog(
      context: context,
      builder: (context) {
        return Align(
            alignment: Alignment.bottomCenter,
            child: Material(
              child: Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                  height: 600, //这个控制对话框高度, 但如果是 响应式就好了.
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(40)),
                  child: Obx(() => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "快捷设置",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w700),
                          ),
                          studyMode(),
                          wordPronounce(),
                          wordAutoPronounce(),
                          sentenceAutoPronounce(),
                          wordPageFontSize(),
                          extContentShowSeq(),
                          const Text(
                            "更多设置请在 [我的-学习设置] 中操作",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ))),
            ));
      });
}
