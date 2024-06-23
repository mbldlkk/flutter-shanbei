import 'package:flutter/material.dart';
import 'current_learning_book.dart';

class CurrentStudyTask extends StatelessWidget {
  const CurrentStudyTask({super.key});

  @override
  Widget build(BuildContext context) {
    return //当前任务
        Expanded(
      flex: 4,
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
          child: const Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text("当前学习任务",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.w700)),
              ),
              Spacer(
                flex: 1,
              ),
              CurrentLearningUserBook(),
              Spacer(
                flex: 1,
              ),
            ],
          )),
    );
  }
}
