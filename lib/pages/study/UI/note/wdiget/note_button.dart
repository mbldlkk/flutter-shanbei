import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/note/controller.dart';
import 'package:flutter_application_1/common/studyWord/controller.dart';
import 'package:flutter_application_1/pages/study/controller/word_note.dart';
import 'package:get/get.dart';

Widget noteButton() {
  final wordNoteController = Get.find<WordNoteController>();
  final noteController = Get.find<NoteController>();
  final studyController = Get.find<StudyController>();

  return Obx(() {
    if (wordNoteController.isEdit.value) {
      return Positioned(
          bottom: 120,
          height: 50,
          right: 120,
          left: 120,
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.grey,
              ),
              child: TextButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                ),
                onPressed: () {
                  noteController
                      .postWordNote(studyController.currentStudyWord.id);
                  wordNoteController.showNote();
                },
                child: const Text(
                  '发布',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    letterSpacing: 3.0,
                  ),
                ),
              )));
    }
    return Positioned(
        bottom: 120,
        height: 50,
        right: 120,
        left: 120,
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              gradient: const LinearGradient(
                colors: [Color(0xFF00C087), Color(0xFF3AD9BE)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: TextButton(
                style: ElevatedButton.styleFrom(
                  // backgroundColor: Colors.transparent,
                  backgroundColor: Colors.transparent,
                  // shadowColor: Colors.transparent
                ),

                // style: ButtonStyle(
                //     backgroundColor: MaterialStateProperty.all()),
                onPressed: () {
                  wordNoteController.showEdit();
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                    Text(
                      '记笔记',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        letterSpacing: 3.0,
                      ),
                    ),
                  ],
                ))));
  });
}
