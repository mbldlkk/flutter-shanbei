import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/userBook/controller.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';

import 'other_book.dart';

//我的书桌
class MyDesk extends StatelessWidget {
  const MyDesk({super.key});

  @override
  Widget build(BuildContext context) {
    final userBookController = Get.find<UserBookController>();
    return Expanded(
        flex: 10,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
          decoration: BoxDecoration(color: Colors.grey[200]),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(
                    () => RichText(
                      text: TextSpan(children: [
                        const TextSpan(
                            text: "我的书桌",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700)),
                        TextSpan(
                            text: " (${userBookController.allBook.length} /10)",
                            style: const TextStyle(
                              color: Colors.black54,
                            ))
                      ]),
                    ),
                  ),
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 3.0, horizontal: 10.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          )),
                      onPressed: () {
                        Get.toNamed(AppPagesName.selectBook);
                      },
                      child: const Row(
                        children: [
                          Text(
                            "+ ",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            "添加新书",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          )
                        ],
                      )),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 420,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Obx(() {
                    final data = userBookController.allBook.map((e) {
                      if (e.id != userBookController.currentBookId) {
                        return OtherUserBook(
                            title: e.name,
                            wordCount: e.wordCount,
                            bookId: e.id);
                      } else {
                        return const SizedBox.shrink();
                      }
                    }).toList();

                    return Column(
                      children: data,
                    );
                  }),
                ),
              )
            ],
          ),
        ));
  }
}
