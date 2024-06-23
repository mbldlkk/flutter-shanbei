import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/studyRecord/controller.dart';
import 'package:flutter_application_1/common/studyWord/controller.dart';
import 'package:flutter_application_1/common/studyWord/local_storage.dart';
import 'package:flutter_application_1/common/studyWord/study_timer.dart';

import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';
import 'widgets/settings_action.dart';
import 'controller/study_page.dart';

class StudyPage extends StatelessWidget {
  const StudyPage({super.key});

// @override
// void on

  @override
  Widget build(BuildContext context) {
    log("学习页面构建中...");

    final studyPageController = Get.find<StudyPageController>();
    final studyController = Get.find<StudyController>();
    final studyRecordController = Get.find<StudyRecordController>();
    final studyTimerController = Get.find<StudyTimerController>();

    // return WordDetailPage();
    onInit() async {
      await studyController.fetchStudyWord();
      //单词加载成功,进入识别ui
      studyPageController.toWordKnowUI();
    }

    onInit();

    return DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFB2EBDE), Color(0xFFF2F0F2)],
            stops: [
              0.1,
              0.75,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Scaffold(
          resizeToAvoidBottomInset: false,

          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: IconButton(
                style: IconButton.styleFrom(padding: const EdgeInsets.all(15)),
                onPressed: () {
                  //笔记页面返回单词详情即可
                  if (studyPageController.studySectionUI.value ==
                      WordSectionUI.wordNote) {
                    studyPageController.toWordDetail();
                    return;
                  }

                  // 否则确认退出
                  showDialog(
                      context: context,
                      builder: (builder) {
                        return AlertDialog(
                          icon: Icon(
                            Icons.warning_rounded,
                            size: 48,
                            color: Colors.red[700],
                          ),
                          actionsAlignment: MainAxisAlignment.spaceBetween,
                          // title: Text("退出"),
                          content: const Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "要暂时离开学习吗?",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w800),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "今日单词任务还没有完成哦",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  //如果退出时,当前单词已识别,并认识
                                  if (studyController.knowWordLevel ==
                                          KnowWordLevel.konw ||
                                      studyController.knowWordLevel ==
                                          KnowWordLevel.simple) {
                                    //那就依据单词类型, ++ 修改单词学习通过记录
                                    if (studyController
                                            .currentStudyMode.value ==
                                        StudyMode.studyNewWord) {
                                      studyRecordController
                                          .studyedNewWordSuccess();
                                    } else {
                                      studyRecordController
                                          .reviewedWordSuccess();
                                    }
                                    //持久化学习记录
                                    studyRecordController.saveLocalData();
                                    //添加当前已经学过的单词 并提交数据
                                  }

                                  //只要用户识别了单词,不管 难易, 添加单词学习记录.都添加学习记录
                                  if (studyController.knowWordLevel !=
                                      KnowWordLevel.unclick) {
                                    studyController.addStudyRecord();
                                  }

                                  //提交数据
                                  studyController.uploadStudyRecord();

                                  StudyTimerLocalStorage.write(
                                      studyTimerController.studyTime);

                                  Get.until((Route route) {
                                    return route.settings.name ==
                                        AppPagesName.index;
                                  });
                                },
                                child: const Text(
                                  "确定离开",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800),
                                )),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text(
                                "再学一会",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w800),
                              ),
                            )
                          ],
                        );
                      });
                },
                icon: const Icon(Icons.arrow_back)),
            actions: [
              IconButton(
                onPressed: () {
                  Get.toNamed(AppPagesName.search);
                },
                icon: const Icon(Icons.search),
              ),
              const SizedBox(
                width: 8,
              ),
              Obx(() {
                if ((studyPageController.studySectionUI.value !=
                        WordSectionUI.wordSummary) &&
                    (studyPageController.studySectionUI.value !=
                        WordSectionUI.wordNote)) {
                  return IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.star_border_outlined),
                  );
                }
                return const SizedBox.shrink();
              }),
              const SizedBox(
                width: 8,
              ),
              settingsAction(context),
              const SizedBox(
                width: 8,
              ),
            ],
          ),
          // bottomSheet: Text("asasdasdasdasdsad111"),
          body: SafeArea(
              child: Obx(
            () => wordSectionUIMap[studyPageController.studySectionUI.value]!,
          )),
        ));
  }
}

// demoShowDialog() {
  // showCupertinoDialog(
  //     barrierDismissible: true,
  //     context: context,
  //     builder: (builder) {
  //       return CupertinoAlertDialog(
  //         content: const Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             Text(
  //               "要暂时离开学习吗?",
  //               style: TextStyle(
  //                   fontSize: 20, fontWeight: FontWeight.w800),
  //             ),
  //             SizedBox(
  //               height: 10,
  //             ),
  //             Text(
  //               "今日单词任务还没有完成哦",
  //               style: TextStyle(
  //                 color: Colors.grey,
  //                 fontWeight: FontWeight.w600,
  //                 fontSize: 17,
  //               ),
  //             ),
  //           ],
  //         ),
  //         actions: [
  //           CupertinoDialogAction(
  //             child: Text('取消'),
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //           ),
  // TextButton(
  //     onPressed: () {
  //       if (studyPageController
  //               .studySectionUI.value ==
  //           WordSectionUI.wordNote) {
  //         studyPageController.toWordDetail();
  //       } else {
  //         Get.toNamed(AppPagesName.home);
  //         // Get.back();
  //       }
  //     },
  //     child: const Text(
  //       "确定离开",
  //       style: TextStyle(
  //           color: Colors.grey,
  //           fontSize: 20,
  //           fontWeight: FontWeight.w800),
  //     )),
  //       TextButton(
  //         onPressed: () {
  //           Navigator.of(context).pop();
  //         },
  //         child: const Text(
  //           "再学一会",
  //           style: TextStyle(
  //               fontSize: 20, fontWeight: FontWeight.w800),
  //         ),
  //       )
  //     ],
  //   );
  // });
// }
