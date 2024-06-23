import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/note/controller.dart';
import 'package:flutter_application_1/pages/study/UI/detail/wdiget/note_item.dart';
import 'package:flutter_application_1/pages/study/controller/study_page.dart';
import 'package:get/get.dart';

class WordNoteSection extends StatelessWidget {
  const WordNoteSection({super.key});

  @override
  Widget build(BuildContext context) {
    StudyPageController studyPageController = Get.find<StudyPageController>();
    final noteController = Get.find<NoteController>();

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 1),
          // color: Colors.red,
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 20.0,
                height: 20.0,
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                        bottom: 0,
                        left: 0,
                        child: Container(
                          width: 30,
                          height: 8,
                          decoration: BoxDecoration(
                              color: const Color(0xFFFFD57F),
                              borderRadius: BorderRadius.circular(20)),
                        )),
                    const Positioned(
                        // top: 0,
                        bottom: 1,
                        // right: 0,
                        left: 6,
                        child: Text(
                          "单词所有笔记",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        )

                        // TextButton(
                        //     onPressed: () {},
                        //     child: ),
                        )
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {
                    studyPageController.toWordNote();
                  },
                  style: IconButton.styleFrom(padding: const EdgeInsets.all(5)),
                  icon: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 15,
                  ))
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Obx(() {
            if (noteController.allNote.isNotEmpty) {
              return ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return NoteItem(
                      author: noteController.allNote[index].authorName,
                      content: noteController.allNote[index].content,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: Colors.grey,
                      height: 1.0,
                    );
                  },
                  itemCount: noteController.allNote.length);
            } else {
              return const Text(
                "还没有人为此单词添加笔记",
                style: TextStyle(fontWeight: FontWeight.w700),
              );
            }
          })
        ],
      ),
    );
  }
}
