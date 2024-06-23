import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/study/controller/word_detail.dart';
import 'package:get/get.dart';

dictionaryNav() {

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          // Container()
          cutstomNavButton(
              labelText: "四级词典", width: 86, section: CurrentSection.cet4),
          cutstomNavButton(
              labelText: "柯林斯词典", width: 100, section: CurrentSection.colins),
        ],
      ),
      TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Colors.white54,
              foregroundColor: Colors.black45,
              padding: const EdgeInsets.symmetric(horizontal: 8.0)),
          onPressed: () {},
          child: const Text(
            "报错",
          )),
    ],
  );
}

cutstomNavButton(
    {required String labelText,
    required CurrentSection section,
    required double width}) {
  final wordDetailc = Get.find<WordDetailController>();
  return TextButton(
      style: ButtonStyle(
          elevation: WidgetStateProperty.resolveWith((states) => 0),
          padding: WidgetStateProperty.resolveWith(
              (states) => const EdgeInsets.only(left: 0)),
          overlayColor: WidgetStateProperty.resolveWith(
              (states) => Colors.transparent)), //隐藏点击时阴影
      onPressed: () {
        wordDetailc.setCurrentSection(section);
      },
      child: Obx(() {
        final isSame = section == wordDetailc.currentSection.value;

        return SizedBox(
          width: width,
          height: 20,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                    width: 40,
                    height: 8,
                    decoration: BoxDecoration(
                        color: isSame
                            ? const Color(0xFF06C38D)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(20)),
                  )),
              Positioned(
                  // top: 0,
                  bottom: 1,
                  // right: 0,
                  left: 6,
                  child: Text(
                    labelText,
                    style: TextStyle(
                        color: isSame ? Colors.black : Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  )

                  // TextButton(
                  //     onPressed: () {},
                  //     child: ),
                  )
            ],
          ),
        );
      }));
}
