import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/note/controller.dart';
import 'package:flutter_application_1/common/studyWord/controller.dart';
import 'package:flutter_application_1/pages/study/controller/word_note.dart';
import 'package:flutter_application_1/styles.dart';
import 'package:get/get.dart';

import '../detail/wdiget/my_note.dart';

import 'wdiget/index.dart';

class WordNotePage extends StatelessWidget {
  const WordNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    final studyController = Get.find<StudyController>();
    final noteControler = Get.find<NoteController>();
    final wordNoteController = Get.find<WordNoteController>();
    // SingleChildScrollView
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(15.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Obx(
              () => Text(
                studyController.currentStudyWord.name,
                style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.w800,
                    color: studyController.knowWordLevel == KnowWordLevel.unKnow
                        ? Colors.amber[900]
                        : AppColor.green),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            sencondSection(),
            const SizedBox(
              height: 18,
            ),
            const WordDesSection(),
            const SizedBox(
              height: 18,
            ),
            const SizedBox(
              height: 18,
            ),
            const MyNote(),
            const SizedBox(
              height: 18,
            ),
            Obx(() {
              if (wordNoteController.isEdit.value) {
                return const NoteEditSection();
              }
              return const WordNoteSection();
            }),
          ]),
        ),
        Obx(() {
          if (noteControler.myNote == null) {
            return noteButton();
          }
          return const SizedBox();
        }),
      ],
    );
  }
}

Widget sencondSection() {
  final studyController = Get.find<StudyController>();
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Text(
            studyController.currentStudyWord.USSymbol,
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(
            width: 15,
          ),
          const Icon(
            Icons.volume_down_rounded,
            color: AppColor.green,
          ),
        ],
      ),
    ],
  );
}

class WordDesSection extends StatelessWidget {
  const WordDesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final studyController = Get.find<StudyController>();

    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 45,
          child: Text(
            studyController.currentStudyWord.type,
            style: const TextStyle(
                fontSize: 10,
                color: Colors.grey,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.italic),
          ),
        ),
        Text(studyController.currentStudyWord.explainCN,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w800,
            ))
      ],
    );
  }
}
