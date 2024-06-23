import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/book/controller.dart';
import 'package:flutter_application_1/pages/selectBook/controller/tag.dart';
import 'package:flutter_application_1/pages/selectBook/wdigets/show_popup_button.dart';
import 'package:flutter_application_1/styles.dart';
import 'package:get/get.dart';

final tagController = Get.find<TagController>();

popularTagItem({required value, required GlobalKey key}) {
  final bookController = Get.find<BookController>();
  return Obx(() => OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          backgroundColor:
              value == tagController.currentTag ? AppColor.green : Colors.white,
          padding: const EdgeInsets.symmetric(
            vertical: 3.0,
            horizontal: 20.0,
          )),
      onPressed: () {
        tagController.setCurrentTag(value);
        bookController.getBookByTag(value);
        overlayEntry.remove();
        tagController.setIsShowTags();
        scrollToHighlightedItem2(key: key);
      },
      child: Text(
        value,
        style: TextStyle(
            fontWeight: FontWeight.w700,
            color: value == tagController.currentTag
                ? Colors.white
                : AppColor.green),
      )));
}

notPopularTagItem({required value, required GlobalKey key}) {
  final bookController = Get.find<BookController>();
  return Obx(() => OutlinedButton(
      style: OutlinedButton.styleFrom(
          side: const BorderSide(width: 0.0, color: Color(0xFFFAF8FA)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          backgroundColor: value == tagController.currentTag
              ? AppColor.green
              : const Color(0xFFFAF8FA),
          padding: const EdgeInsets.symmetric(
            vertical: 3.0,
            horizontal: 20.0,
          )),
      onPressed: () {
        tagController.setCurrentTag(value);
        bookController.getBookByTag(value);
        overlayEntry.remove();
        tagController.setIsShowTags();
        scrollToHighlightedItem2(key: key);
      },
      child: Text(
        value,
        style: TextStyle(
            fontWeight: FontWeight.w700,
            color: value == tagController.currentTag
                ? Colors.white
                : const Color(0xFFC5C4C6)),
      )));
}

// 测试用例 scollerController 滚动到第十个元素的位置
// var demokey = keyList[10];
// void scrollToHighlightedItem1() {
//   RenderBox? demoobj = demokey.currentContext?.findRenderObject() as RenderBox?;
//   if (demoobj != null) {
//     double dx = demoobj.localToGlobal(Offset.zero).dx;
//     double dy = demoobj.localToGlobal(Offset.zero).dy;
//     //
//     var scrollController;
//     scrollController.animateTo(dx,
//         duration: const Duration(milliseconds: 500), curve: Curves.ease);
//     debugPrint("dy是$dy,dx是$dx");
//   } else {
//     debugPrint("demoobj 为空!!");
//   }
// }

// 基于scrollAble 滚动
void scrollToHighlightedItem2({required GlobalKey key}) async {
  final context = key.currentContext!;
  await Scrollable.ensureVisible(context,
      duration: const Duration(milliseconds: 600), alignment: 0.5);
}
