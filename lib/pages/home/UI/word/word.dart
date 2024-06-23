import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/checkIn/controller.dart';

import 'package:flutter_application_1/common/studyRecord/controller.dart';
import 'package:flutter_application_1/common/userBook/controller.dart';
import 'package:flutter_application_1/pages/home/UI/word/wdigets/show_more_features_dialog.dart';

import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';

import '../../../../common/studyPlan/controller.dart';

class WordPage extends StatelessWidget {
  const WordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final studyPlanController = Get.find<StudyPlanController>();
    final studyRecordController = Get.find<StudyRecordController>();
    final userBookController = Get.find<UserBookController>();
    final checkInController = Get.find<CheckInController>();

    log("单词页面构建中....");

    return Container(
        // color: ,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color.fromARGB(121, 133, 243, 239), Colors.white])),
        padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 45.0),
        child: Obx(() {
          if (userBookController.name == null ||
              userBookController.wordCount == null) {
            return const CircularProgressIndicator();
          }

          return Column(children: [
            // showBottomSheet(context: context, builder: builder)
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  style: IconButton.styleFrom(padding: const EdgeInsets.all(3)),
                  onPressed: () {
                    showMoreFeaturesDialog(context);
                  },
                  icon: const Icon(Icons.menu),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    Get.toNamed(AppPagesName.search);
                  },
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: const Color(0xFFCEE7E3)),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                      child: Center(
                        child: Text("查询 | 中英文单词"),
                      ),
                    ),
                  ),
                )),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                    style:
                        IconButton.styleFrom(padding: const EdgeInsets.all(3)),
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_none_sharp)),
              ],
            ),

            const SizedBox(
              height: 75,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("已打卡天数 "),
                Icon(
                  Icons.calendar_month_outlined,
                  size: 15,
                ),
              ],
            ),

            Obx(
              () => Text(
                checkInController.checkInTimes.toString(),
                style:
                    const TextStyle(fontSize: 52, fontWeight: FontWeight.w900),
              ),
            ),
            // Icon(Icons.arrow_back_ios_new_sharp),
            const SizedBox(
              height: 75,
            ),
            Container(
              padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            userBookController.name!,
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w700),
                          ),
                          IconButton(
                              onPressed: () {
                                Get.toNamed(AppPagesName.myBooks);
                              },
                              icon: const Icon(
                                Icons.arrow_forward_ios_sharp,
                                size: 10,
                              )),
                        ],
                      ),
                      const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.book_outlined,
                              size: 15,
                            ),
                            Text(" 词表",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w800)),
                          ]),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Obx(() => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "已学${((studyRecordController.currentBookStudyedSuccessCount / userBookController.wordCount!) * 100).toStringAsFixed(2)}%",
                            style: const TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w800),
                          ),
                          Text(
                            "${studyRecordController.currentBookStudyedSuccessCount}/${userBookController.wordCount}词",
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 10),
                          ),
                        ],
                      )),
                  const SizedBox(
                    height: 3,
                  ),
                  Obx(
                    () => LinearProgressIndicator(
                        value: studyRecordController
                                .currentBookStudyedSuccessCount /
                            userBookController.wordCount!),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Obx(
                  () => RichText(
                    text: TextSpan(
                        text: "新学词   ",
                        style: const TextStyle(color: Colors.grey),
                        children: [
                          TextSpan(
                            text:
                                " ${studyRecordController.todayStudyedSuccessNewWord}/${studyPlanController.todayNeedStudyedNewWord}",
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ]),
                  ),
                ),
                Obx(() => RichText(
                      text: TextSpan(
                          text: "复习词   ",
                          style: const TextStyle(color: Colors.grey),
                          children: [
                            TextSpan(
                              text:
                                  " ${studyRecordController.todayReviewedSuccessWord}/${studyPlanController.todayNeedReviewedWord}",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ]),
                    )),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Obx(() {
              //今日任务已完成
              log("${checkInController.todayIsCheckIn}");
              if (checkInController.todayIsCheckIn) {
                return const Text("今日任务已完成");
              }
              final isFinish =
                  (studyRecordController.todayReviewedSuccessWord ==
                          studyPlanController.todayNeedReviewedWord) &&
                      (studyRecordController.todayStudyedSuccessNewWord ==
                          studyPlanController.todayNeedStudyedNewWord);

              return DecoratedBox(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      gradient: const LinearGradient(
                        colors: [Color(0xFF06C38C), Color(0xFF40DBC1)],
                      )),
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      // textStyle: const TextStyle(color: Colors.red),
                      // elevation:,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      backgroundColor: Colors.transparent,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 100.0, vertical: 12.0),
                    ),
                    onPressed: () {
                      if (isFinish) {
                        Get.toNamed(AppPagesName.checkIn);
                      } else {
                        Get.toNamed(AppPagesName.study);
                      }
                    },
                    label: isFinish
                        ? const Text(
                            "去打卡",
                            style: TextStyle(color: Colors.white),
                          )
                        : const Text(
                            "开始学习",
                            style: TextStyle(color: Colors.white),
                          ),
                    icon: const Icon(
                      Icons.arrow_forward_sharp,
                      color: Colors.white,
                    ),
                  ));
            })
          ]);
        }));
  }
}
