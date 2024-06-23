// library kami;

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/note/controller.dart';
import 'package:flutter_application_1/common/studyWord/controller.dart';

import 'package:flutter_application_1/styles.dart';
import 'package:get/get.dart';

import 'wdiget/index.dart';

class WordKnowUIPage extends StatelessWidget {
  const WordKnowUIPage({super.key});

  @override
  Widget build(BuildContext context) {
    final studyController = Get.find<StudyController>();

    final noteController = Get.find<NoteController>();

    noteController.fetchCurrentWordNote(studyController.currentStudyWord.id);

    studyController.knowWordLevel = KnowWordLevel.unclick;

    log("识别ui 构建中");

    return Container(
      padding: const EdgeInsets.all(15.0),
      // decoration: BoxDecoration(color: Color(0xFFF6F3F6)),
      child: Column(children: [
        todayTaskSection(),
        const SizedBox(
          height: 38,
        ),
        Text(
          studyController.currentStudyWord.name,
          style: const TextStyle(
            fontSize: 42,
            fontWeight: FontWeight.w800,
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(studyController.currentStudyWord.USSymbol),
            const Icon(
              Icons.volume_down_rounded,
              color: AppColor.green,
            ),
          ],
        ),
        const SizedBox(
          height: 18,
        ),
        // Icon(Icons.volume_up_rounded),
        deleteButton(),

        const Spacer(
          flex: 2,
        ),
        const SizedBox(
          height: 25,
        ),

        const Text("尝试回想释义"),
        const Text("点击空白处查看提示"),
        const SizedBox(
          height: 25,
        ),
        Expanded(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            identifyWordButton(
                content: "不认识",
                contentColor: 0xFFDE875A,
                onTap: () {
                  log("用户辨识单词时,点击了不认识单词");
                  studyController.setOutKnowUI();
                  studyController.switchUnKnowWord();
                }),
            identifyWordButton(
                content: "我认识",
                contentColor: 0xFF0BA779,
                onTap: () {
                  log("用户辨识单词时,点击了认识单词");
                  studyController.setInKnowUI();
                  studyController.switchKnowWord();
                }),
          ],
        )),
      ]),
    );
  }
}
