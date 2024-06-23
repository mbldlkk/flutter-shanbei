import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/userBook/controller.dart';
import 'package:flutter_application_1/pages/settings/wdiget/book_image.dart';
import 'package:get/get.dart';

class OtherUserBook extends StatelessWidget {
  final int bookId;
  final String title;
  final int wordCount;
  const OtherUserBook({
    super.key,
    required this.bookId,
    required this.title,
    required this.wordCount,
  });

  @override
  Widget build(BuildContext context) {
    final userBookController = Get.find<UserBookController>();

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Row(
          children: [
            Column(
              children: [
                Expanded(
                  // flex: 1,
                  child: bookImage(),
                )
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Text(
                    "单词总计: $wordCount",
                    style: const TextStyle(color: Colors.grey),
                  ),
                  const Spacer(
                    flex: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            //根据userBookId 删除书籍.
                            userBookController.deleteBook(bookId);
                          },
                          style: IconButton.styleFrom(
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0.0, horizontal: 0.0),
                              minimumSize: Size.zero),
                          icon: const Icon(
                            Icons.delete_outline_rounded,
                            size: 28,
                            color: Colors.grey,
                          )),
                      ElevatedButton(
                          onPressed: () {
                            Get.snackbar("提示", "演示书籍,没有实际单词存在, 故无法切换");
                            // userBookController.switchDefaultBook(
                            //     bookId, title, wordCount);
                          },
                          child: const Text("学习此书"))
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 20,
            )
          ],
        ),
      ),
    );
  }
}
