import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/studyRecord/controller.dart';
import 'package:flutter_application_1/common/userBook/controller.dart';
import 'package:flutter_application_1/styles.dart';
import 'package:get/get.dart';

import '../../settings/wdiget/book_image.dart';

class CurrentLearningUserBook extends StatelessWidget {
  const CurrentLearningUserBook({super.key});

  @override
  Widget build(BuildContext context) {
    final userBookController = Get.find<UserBookController>();
    final studyRecordController = Get.find<StudyRecordController>();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            children: [
              Expanded(
                child: bookImage(),
              )
            ],
          ),

          // const Spacer(
          //   flex: 1,
          // ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(() {
                return Text(
                  userBookController.name!,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w700),
                );
              }),
              const SizedBox(
                height: 4,
              ),
              RichText(
                  text: const TextSpan(children: [
                TextSpan(
                  text: "每日新学",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
                TextSpan(
                  text: " 10 ",
                  style: TextStyle(
                      color: AppColor.green, fontWeight: FontWeight.w500),
                ),
                TextSpan(
                  text: "词",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                )
              ])),
              const Spacer(
                flex: 2,
              ),
              Obx(() {
                return Text(
                  "已完成: ${studyRecordController.currentBookStudyedSuccessCount} /${userBookController.wordCount}词",
                  style: const TextStyle(color: Colors.black38, fontSize: 12),
                );
              }),
              const SizedBox(
                height: 8,
              ),
              Obx(() {
                return LinearProgressIndicator(
                  value: studyRecordController.currentBookStudyedSuccessCount /
                      userBookController.wordCount!,
                );
              })
            ],
          ))
        ],
      ),
    );
  }
}
