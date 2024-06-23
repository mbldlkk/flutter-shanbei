import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/studyWord/controller.dart';
import 'package:flutter_application_1/styles.dart';

import 'package:get/get.dart';

class DictionaryCET4SectionUI extends StatelessWidget {
  const DictionaryCET4SectionUI({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        WordDesSection(),
        SizedBox(
          height: 14,
        ),
        SentenceSection()
      ],
    );
  }
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

class SentenceSection extends StatelessWidget {
  const SentenceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final wordc = Get.find<StudyController>();

    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 45,
          child: Text(
            "例句",
            style: TextStyle(
              fontSize: 10,
              color: Colors.grey,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(wordc.currentStudyWord.sentence,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  )),
              const SizedBox(
                height: 12,
              ),
              Text(wordc.currentStudyWord.sentenceCN,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                  ))
            ],
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        const Icon(
          Icons.volume_down_rounded,
          color: AppColor.green,
        )
      ],
    );
  }
}
