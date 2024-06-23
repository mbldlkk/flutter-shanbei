import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/note/controller.dart';
import 'package:get/get.dart';

class NoteEditSection extends StatelessWidget {
  const NoteEditSection({super.key});

  @override
  Widget build(BuildContext context) {
    final noteController = Get.find<NoteController>();

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 15.0),
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 14),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 1),
              // color: Colors.red,
              borderRadius: BorderRadius.circular(15)),
          child: TextField(
            cursorColor: Colors.black,
            maxLines: 5,
            decoration: const InputDecoration(
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              // labelText: '请输入内容',
              hintText: '在这里输入文本',
            ),
            onChanged: (text) {
              // 防抖 设置笔记状态
              noteController.editNote(text);
            },
          ),
        ),
        Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("${noteController.editContent.length} /800 字   ")
              ],
            ))
      ],
    );
  }
}
