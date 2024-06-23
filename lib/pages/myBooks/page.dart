import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/myBooks/wdigets/current_study_task.dart';
import 'package:flutter_application_1/pages/myBooks/wdigets/my_desk.dart';

class MyBooksPage extends StatelessWidget {
  const MyBooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "我的单词书",
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          // actions: [
          // TextButton(
          //     onPressed: () {},
          //     child: const Text(
          //       "书库",
          //       style: TextStyle(
          //           color: Colors.black,
          //           fontWeight: FontWeight.w700,
          //           fontSize: 20),
          //     ))
          // ],
        ),
        body: const SafeArea(
            child: Column(
          children: [
            CurrentStudyTask(),
            MyDesk(),
          ],
        )));
  }
}
