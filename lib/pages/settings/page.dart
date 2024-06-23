import 'package:flutter/material.dart';

import 'package:get/get.dart';

import './wdiget/index.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final settingsController = Get.find<SettingsController>();

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "学习设置",
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.w700, letterSpacing: 1.0),
          ),
          centerTitle: true,
        ),
        body: Obx(() => ListView(
              // padding: EdgeInsets.all(20.0),
              children: [
                currentLearnBookCard(),
                subTitleSection("单词学习设置"),
                studySeq(),
                studyMode(),
                wordPronounce(),
                wordAutoPronounce(),
                sentenceAutoPronounce(),
                preloadTodayAudio(),
                subTitleSection("显示设置"),
                wordPageFontSize(),
                homePageStudyMode(),
                knowWordPageUI(),
                subTitleSection("拓展包设置"),
                collinsDefaultShow(),
                colinsDictionary(),
                extContentShowSeq(),
                const SizedBox(
                  height: 60,
                ),
                // ...testButton()
              ],
            )));
  }
}
