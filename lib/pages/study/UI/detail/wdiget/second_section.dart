import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/studyWord/controller.dart';
import 'package:flutter_application_1/styles.dart';
import 'package:get/get.dart';
import 'dart:math' as math;

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
      Obx(() {
        if (studyController.isInKnowWordUI) {
          return Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
            decoration: const BoxDecoration(
                color: Colors.white38,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Obx(() {
                  switch (studyController.knowWordLevel) {
                    case KnowWordLevel.konw:
                      return GreyIconButton(
                        icon: Transform.rotate(
                          angle: math.pi * 90 / 180,
                          child: const Icon(Icons.u_turn_left),
                        ),
                        labelText: '不认识',
                        onPressed: () {
                          studyController.switchUnKnowWord();
                        },
                      );
                    case KnowWordLevel.unKnow:
                      return const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 3.0),
                        child: Text(
                          "稍后继续安排学习",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w600),
                        ),
                      );

                    case KnowWordLevel.simple:
                      return const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 3.0),
                        child: Text(
                          "再也不学了",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w600),
                        ),
                      );
                    case KnowWordLevel.unclick:
                      return const Text("错误");
                  }
                }),
                const SizedBox(
                  width: 4.0,
                  height: 10.0,
                  child: VerticalDivider(
                    // width: 20.0,
                    color: Colors.black38,
                    thickness: 2.0,
                  ),
                ),
                Obx(() {
                  switch (studyController.knowWordLevel) {
                    case KnowWordLevel.konw:
                      return GreyIconButton(
                          onPressed: () {
                            studyController.switchWordSimple();
                          },
                          icon: const Icon(Icons.delete),
                          labelText: '太简单');
                    case KnowWordLevel.unKnow:
                      return TextButton(
                        child: const Text(
                          "撤销",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w600),
                        ),
                        onPressed: () {
                          studyController.switchKnowWord();
                        },
                      );
                    case KnowWordLevel.simple:
                      return TextButton(
                        child: const Text(
                          "撤销",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w600),
                        ),
                        onPressed: () {
                          studyController.switchKnowWord();
                        },
                      );
                    case KnowWordLevel.unclick:
                      return const Text("错误");
                  }
                }),
              ],
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      })
    ],
  );
}

class GreyIconButton extends StatelessWidget {
  const GreyIconButton(
      {super.key,
      required this.icon,
      required this.labelText,
      required this.onPressed});
  // CheckboxListTile
  final Function onPressed;
  final Widget icon;
  final String labelText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      // width: 150,
      child: TextButton(
        style: ButtonStyle(
            foregroundColor:
                const WidgetStatePropertyAll(Colors.black38), //字体图标的颜色
            // visualDensity:
            // VisualDensity(horizontal: 0.0, vertical: 0.0),
            // maximumSize:
            //     WidgetStateProperty.all(Size.fromHeight(40)),
            iconSize: WidgetStateProperty.all(14),
            textStyle: WidgetStateProperty.all(const TextStyle(fontSize: 10.0)),
            // backgroundColor:
            //     WidgetStateProperty.all(Colors.grey), // 按钮背景颜色
            padding: WidgetStateProperty.all(
                const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0))),
        onPressed: () {
          onPressed();
        },
        child: Row(
          // mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon,
            const SizedBox(width: 1),
            Text(
              labelText,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget greyIconButton({required Widget icon, required String labelText}) {
  return SizedBox(
    height: 20,
    // width: 150,
    child: TextButton(
      style: ButtonStyle(
          foregroundColor:
              const WidgetStatePropertyAll(Colors.black38), //字体图标的颜色
          // visualDensity:
          // VisualDensity(horizontal: 0.0, vertical: 0.0),
          // maximumSize:
          //     WidgetStateProperty.all(Size.fromHeight(40)),
          iconSize: WidgetStateProperty.all(18),
          textStyle: WidgetStateProperty.all(const TextStyle(fontSize: 100.0)),
          // backgroundColor:
          //     WidgetStateProperty.all(Colors.grey), // 按钮背景颜色
          padding: WidgetStateProperty.all(
              const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0))),
      onPressed: () {},
      child: Row(
        // mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          const SizedBox(width: 1),
          Text(
            labelText,
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
          ),
        ],
      ),
    ),
  );
}
