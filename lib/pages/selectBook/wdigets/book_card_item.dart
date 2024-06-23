import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/studyPlan/api.dart';
import 'package:flutter_application_1/common/studyPlan/local_storage.dart';
import 'package:flutter_application_1/common/userBook/controller.dart';
import 'package:flutter_application_1/pages/settings/wdiget/book_image.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';

bookCardItem(
    {required String bookName, required int wordCount, required int bookId}) {
  final userBookController = Get.find<UserBookController>();
  final studyPlanApi = Get.find<StudyPlanApi>();
  return GestureDetector(
      onTap: () async {
        log("添加书籍 $bookName");
        final isFirst = await userBookController.addNewBook(
            bookId: bookId, bookName: bookName, bookWordCount: wordCount);
        final studyPlanInfo = await studyPlanApi.fetchTodayStudyPlan();
        await StudyPlanLocalStorge.write(studyPlanInfo);

        if (isFirst) {
          Get.offNamed(AppPagesName.index);
        } else {
          Get.back();
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: bookImage(),
          ),
          Text(
            bookName,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            "$wordCount词",
            style: const TextStyle(
                fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w700),
          )
        ],
      ));
}
