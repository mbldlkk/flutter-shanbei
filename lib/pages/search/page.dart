import 'package:flutter/material.dart';
import 'package:flutter_application_1/styles.dart';
import 'package:get/get.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(),
        body: SafeArea(
      top: true,
      child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 35.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      autofocus: true,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40.0),
                              borderSide: const BorderSide(
                                  color: AppColor.green, width: 2)),
                          floatingLabelAlignment:
                              FloatingLabelAlignment.center, // 标签在顶部的位置

                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          // labelText: "查询英文单词",
                          // filled: true,
                          hintText: "查询英文或中文",
                          hintStyle: const TextStyle(color: Colors.grey),
                          fillColor: const Color(0xFFD0E8E4),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 1.0,
                              horizontal: 25.0), //重点! 可以设置 输入框内边距和上下边距
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(38.0))),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text(
                        "取消",
                        style: TextStyle(color: Colors.black, fontSize: 22.0),
                      ))
                ],
              ),
              // Row(children: [

              // ],)
            ],
          )),
    ));
  }
}
