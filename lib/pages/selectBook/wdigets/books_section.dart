import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/book/controller.dart';
import 'package:flutter_application_1/pages/selectBook/wdigets/book_card_item.dart';
import 'package:get/get.dart';

Widget booksSection() {
  final bookController = Get.find<BookController>();
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Obx(
      () => GridView(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 40.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 0.45,
            crossAxisCount: 3,
          ),
          children: bookController.bookList
              .map((e) => bookCardItem(
                  bookName: e.name,
                  wordCount: e.wordCount,
                  bookId: e.id) as Widget)
              .toList()),
      //测试用例 bookCardItem(bookName: "四级真题核心词汇书", wordCount: 1641),
    ),
  );
}
