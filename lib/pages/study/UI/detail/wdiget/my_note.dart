import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/note/controller.dart';
import 'package:get/get.dart';

class MyNote extends StatelessWidget {
  const MyNote({super.key});

  @override
  Widget build(BuildContext context) {
    final noteController = Get.find<NoteController>();

    return Obx(() {
      if (noteController.myNote != null) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 15.0),
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 14),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 1),
              // color: Colors.red,
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 20.0,
                    height: 20.0,
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                            bottom: 0,
                            left: 0,
                            child: Container(
                              width: 30,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFFFD57F),
                                  borderRadius: BorderRadius.circular(20)),
                            )),
                        Positioned(
                            // top: 0,
                            bottom: 1,
                            // right: 0,
                            left: 6,
                            child: RichText(
                                text: const TextSpan(children: [
                              TextSpan(
                                text: "我的笔记",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18),
                              ),
                              TextSpan(
                                text: "(未被精选的笔记,仅自己可见)",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13),
                              )
                            ]))

                            // TextButton(
                            //     onPressed: () {},
                            //     child: ),
                            )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 15.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(noteController.myNote!.content),
                        Text(
                          "作者: ${noteController.myNote!.authorName}",
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    // 不需要自定义
                    // IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
                    PopupMenuButton<String>(
                      // elevation: 20,
                      offset: const Offset(10, -10),
                      constraints: const BoxConstraints(minWidth: 0),
                      color: Colors.grey[600],
                      onSelected: (String result) {
                        // 根据选项的值执行不同的操作
                        // 但是选项部件中有ontap? 多余操作?
                      },
                      // icon: Icon(Icons.upcoming),
                      itemBuilder: (BuildContext context) =>
                          <PopupMenuEntry<String>>[
                        const PopupMenuItem<String>(
                          //无效?
                          labelTextStyle: WidgetStatePropertyAll(
                              TextStyle(color: Colors.amber)),
                          height: 1,
                          // padding: EdgeInsets.all(0),
                          value: 'edit',
                          child: Text(
                            '编辑',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const PopupMenuDivider(),
                        const PopupMenuItem<String>(
                          height: 5,
                          // padding: EdgeInsets.all(20),
                          value: 'delete',
                          child: Text(
                            '删除',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      }
      return const SizedBox();
    });
  }
}
