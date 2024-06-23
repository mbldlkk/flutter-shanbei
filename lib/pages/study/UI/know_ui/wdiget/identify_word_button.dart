import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/study/controller/study_page.dart';
import 'package:get/get.dart';

Widget identifyWordButton({
  required String content,
  required int contentColor,
  required Function onTap,
}) {
  final wordStudyController = Get.find<StudyPageController>();
  return Ink(
    decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10))),
    child: InkWell(
      onTap: () {
        log("用户正在辨识该单词");
        onTap();
        wordStudyController.toWordDetail();
      },
      child: SizedBox(
          width: 100,
          height: 100,
          // decoration: ,
          child: Center(
            child: Text(
              content,
              style: TextStyle(
                  color: Color(contentColor),
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
          )),
    ),
  );
}
