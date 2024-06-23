import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../../common/studyWord/controller.dart';

import 'wdiget/index.dart';

class WordSummaryPage extends StatelessWidget {
  const WordSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final studyController = Get.find<StudyController>();

    return Container(
      padding: const EdgeInsets.all(30.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            sectionTitle(labelText: "单词小结", width: 15),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  backgroundColor: Colors.white38,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 3.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "遮挡设置",
                    style: TextStyle(color: Colors.black54, fontSize: 14),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  FaIcon(
                    size: 14,
                    FontAwesomeIcons.sliders,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        ListView.separated(
          itemCount: studyController.summaryWordData.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return WordSummaryItem(
                name: studyController.summaryWordData[index].name,
                isKnow: studyController.summaryWordData[index].isKnow!,
                explainCN: studyController.summaryWordData[index].explainCN,
                type: studyController.summaryWordData[index].type);
          },
          separatorBuilder: (context, index) {
            return const Divider(color: Colors.grey, height: 1.0);
          },
        ),
        const Spacer(),
        nextStageButton(),
      ]),
    );
  }
}
