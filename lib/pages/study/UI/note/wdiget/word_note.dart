import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/note/controller.dart';
import 'package:get/get.dart';

import '../../detail/wdiget/note_item.dart';
// 模拟笔记ui
// import 'note_item.dart';

class WordNoteSection extends StatelessWidget {
  const WordNoteSection({super.key});

  @override
  Widget build(BuildContext context) {
    final noteController = Get.find<NoteController>();
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 14),
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
                              fontSize: 16),
                        )

                        // TextButton(
                        //     onPressed: () {},
                        //     child: ),
                        )
                  ],
                ),
              ),
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
                "此单词尚无笔记, 你可以添加你的单词笔记",
                style: TextStyle(fontWeight: FontWeight.w700),
              );
            }
          })
        ],
      ),
    );
  }
}
