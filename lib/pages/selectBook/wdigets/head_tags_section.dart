import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/book/controller.dart';
import 'package:flutter_application_1/pages/selectBook/wdigets/head_tag_items.dart';
import 'package:get/get.dart';

import '../controller/tag.dart';

List<GlobalKey> keyList = List.generate(allTags.length, (index) => GlobalKey());

// 使用singlechild 方式

headTagSection() {
  final tagController = Get.find<TagController>();
  ScrollController scrollController = ScrollController();
  final bookController = Get.find<BookController>();

  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    controller: scrollController,
    child: Row(
      children: List.generate(
        allTags.length,
        (index) => Obx(
          () =>
              // key: keyList[index],
              // child:
              TagItem2(
            key: keyList[index],
            value: allTags[index],
            groupValue: tagController.currentTag,
            onTap: () {
              tagController.setCurrentTag(allTags[index]);
              bookController.getBookByTag(allTags[index]);
            },
          ),
        ),
      ),
    ),
  );
}

// listView 1
//  ListView(
//                               // itemExtent:
//  // 80.0, // 如果动态计算耗费性能, 但是不动态计算, 长宽不一样的情况下, 样式不美观
//                               shrinkWrap: true,
//                               children: TagsWeidgt,
//                               scrollDirection: Axis.horizontal,
//                             ),

//// 使用list View 方式 , 由于虚拟滚动的原因, 点击后下滑条的滚动逻辑 实现困难, 放弃
headTagItemsDemo() {
  final tagController = Get.find<TagController>();
  ScrollController scrollController = ScrollController();
  return ListView.builder(
    // itemExtent:
    //     120.0, // 如果动态计算耗费性能, 但是不动态计算, 长宽不一样的情况下, 样式不美观
    shrinkWrap: true,
    scrollDirection: Axis.horizontal,
    itemCount: allTags.length,
    controller: scrollController,
    itemBuilder: (context, index) => Obx(
      () =>
          // key: keyList[index],
          // child:
          TagItem2(
        key: keyList[index],
        value: allTags[index],
        groupValue: tagController.currentTag,
        onTap: () {
          tagController.setCurrentTag(allTags[index]);
        },
      ),
    ),
  );
}
