import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/settings/controller.dart';
import 'package:flutter_application_1/common/userBook/controller.dart';
import 'package:flutter_application_1/pages/settings/wdiget/book_image.dart';
import 'package:get/get.dart';

final settingsController = Get.find<SettingsController>();
Widget currentLearnBookCard() {
  final userBookController = Get.find<UserBookController>();
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        bookImage(),
        const SizedBox(
          width: 20,
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    userBookController.name!,
                    style: const TextStyle(fontSize: 18),
                  ),

                  // ButtonTheme(
                  //   // padding: EdgeInsets.symmetric(
                  //   //     vertical: 4.0,
                  //   //     horizontal: 8.0)
                  //   //     , //adds padding inside the button
                  //   materialTapTargetSize: MaterialTapTargetSize
                  //       .shrinkWrap, //limits the touch area to the button area
                  //   // minWidth: 0, //wraps child's width

                  //   // height: 0, //wraps child's height
                  //   child: TextButton(
                  //       onPressed: () {},
                  //       child: Text('Button Text')), //your original button
                  // ),

                  // height: 25,
                  // width: 150,
                  // child:

                  ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: const Color(0xFFECFAF8),
                        shadowColor: Colors.transparent,
                        foregroundColor: const Color(0xFF26BA9E),
                        minimumSize: Size
                            .zero, // Set this,如果说设置的是最小尺寸, 为什么没法工作? 因为设置了固定尺寸为0
                        padding: const EdgeInsets.symmetric(
                            vertical: 1.0, horizontal: 10.0), // and this
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3.0),
                        )

                        //       shape:
                        //           MaterialStatePropertyAll(RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.circular(10.0),
                        ),
                    //       textStyle: const MaterialStatePropertyAll(TextStyle(
                    //         color: Colors.red,
                    //         // backgroundColor: Colors.red
                    //       )),
                    //       backgroundColor:
                    //           MaterialStatePropertyAll(Color(0xFFECFAF8))),
                    onPressed: () {},
                    child: const Text(
                      "换书",
                      style: TextStyle(fontSize: 14
                          // color: Colors.red,
                          ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                        text: "每日新词 ",
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                              text: "10      ",
                              style: TextStyle(
                                  color: Color(0xFF26BA9E),
                                  fontWeight: FontWeight.w700)),
                          TextSpan(
                            text: "复习词 ",
                          ),
                          TextSpan(
                              text: "30",
                              style: TextStyle(
                                  color: Color(0xFF26BA9E),
                                  fontWeight: FontWeight.w700)),
                        ]),
                  ),
                  ElevatedButton(
                      style: const ButtonStyle(
                          // padding: MaterialStatePropertyAll(EdgeInsets.zero),
                          // tapTargetSize: MaterialTapTargetSize.padded
                          // minimumSize:
                          // MaterialStatePropertyAll(Size(50, 30))
                          ),
                      onPressed: () {},
                      child: const Text(
                        "调整",
                        // style: TextStyle(fontSize: 70),
                      ))
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("智能出词"),
                  Transform.scale(
                    scale: 0.5,
                    child: Switch(
                        value: settingsController.intelligentMode.value,
                        onChanged: (value) {
                          settingsController.setIntelligentMode();
                        }),
                  )
                ],
              )
            ],
          ),
        ))
      ],
    ),
  );
}
