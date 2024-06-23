import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/selectBook/wdigets/books_section.dart';
import 'package:flutter_application_1/pages/selectBook/wdigets/head_tags_section.dart';
import 'package:flutter_application_1/pages/selectBook/wdigets/show_popup_button.dart';

class SelectBookPage extends StatelessWidget {
  const SelectBookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                SizedBox(
                  height: 38,
                  // width: 300,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // 滚动标签模块
                        Expanded(
                          flex: 17,
                          child: headTagSection(),
                        ),
                        //下拉 展示标签模块
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: showPopupButton(context),
                        )

                        // Expanded(flex: 2, child: )
                      ]),
                ),
                const SizedBox(
                  height: 18,
                ),
                // 书籍模块
                booksSection()
              ],
            )));
  }
}
