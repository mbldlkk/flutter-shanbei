import 'package:flutter_application_1/pages/home/controller/nav.dart';
import 'package:flutter_application_1/pages/home/UI/about/about.dart';
import 'package:flutter_application_1/pages/home/UI/course/course.dart';
import 'package:flutter_application_1/pages/home/UI/discover/discover.dart';
import 'package:flutter_application_1/pages/home/UI/word/word.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

final List<Widget> pageList = [
  const WordPage(),
  const CoursePage(),
  const DiscoverPage(),
  const AboutMePage(),
];

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    final navcontroller = Get.find<NavController>();
    // final bookController = Get.find<BookController>();

    // // if (bookController.name.value == "null") {
    // //   Get.toNamed(AppPagesName.selectBook);
    // //   // return;
    // // }

    return Scaffold(
        appBar: null,
        resizeToAvoidBottomInset: false,
        body: Obx(() => pageList[navcontroller.currentIndex]),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
              currentIndex: navcontroller.currentIndex,
              type: BottomNavigationBarType.fixed,
              selectedIconTheme: const IconThemeData(),
              unselectedLabelStyle: TextStyle(
                color: Colors.grey.withOpacity(0.9),
                // shadows: [
                //   Shadow(
                //     color: Colors.black,
                //     offset: Offset(2.0, 2.0),
                //     blurRadius: 3.0,
                //   ),
                // ],
              ),
              selectedItemColor: Colors.black,
              backgroundColor: Colors.white,
              onTap: (value) {
                navcontroller.setCurrentIndex(value);
              },
              items: const [
                BottomNavigationBarItem(
                    label: "单词",
                    backgroundColor: Colors.red,
                    icon: Icon(Icons.cloudy_snowing)),
                BottomNavigationBarItem(label: "课程", icon: Icon(Icons.sunny)),
                BottomNavigationBarItem(
                    label: "发现", icon: Icon(Icons.thunderstorm)),
                BottomNavigationBarItem(label: "我的", icon: Icon(Icons.person)),
              ]),
        ));
  }
}
