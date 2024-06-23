import 'package:flutter/material.dart';

import 'package:flutter_application_1/common/studyWord/controller.dart';
import 'package:flutter_application_1/pages/study/controller/word_detail.dart';

import 'package:flutter_application_1/styles.dart';

import 'package:get/get.dart';

import 'wdiget/index.dart';

class WordDetailPage extends StatelessWidget {
  const WordDetailPage({super.key});

  @override
  Widget build(BuildContext context) {

    final wordDetailc = Get.put<WordDetailController>(WordDetailController());
    final studyController = Get.find<StudyController>();

    return Column(children: [
      Expanded(
          child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        studyController.currentStudyWord.name,
                        style: TextStyle(
                            fontSize: 42,
                            fontWeight: FontWeight.w800,
                            color: studyController.knowWordLevel ==
                                    KnowWordLevel.unKnow
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
                    dictionaryNav(),
                    const SizedBox(
                      height: 18,
                    ),
                    Obx(() =>
                        dictionarySectionUI[wordDetailc.currentSection.value]),
                    const SizedBox(
                      height: 18,
                    ),
                    const MyNote(),
                    const SizedBox(
                      height: 18,
                    ),
                    const WordNoteSection(),
                    const SizedBox(
                      height: 90,
                    )
                  ]),
            ),
          ),
          nextButton(),
        ],
      ))
    ]);
  }
}

Map<CurrentSection, dynamic> dictionarySectionUI = {
  CurrentSection.cet4: const DictionaryCET4SectionUI(),
  CurrentSection.colins: dictionaryColinsSectionUI()
};
