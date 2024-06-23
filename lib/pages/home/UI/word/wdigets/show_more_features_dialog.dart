import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';

final moreFeatureItems = [
  {"colorNumber": 0xFFFCFDF6, "labelText": "随身听", "path": "/"},
  {"colorNumber": 0xFFFFF1F6, "labelText": "短语", "path": "/"},
  {"colorNumber": 0xFFDAF3FF, "labelText": "阅读", "path": "/"},
  {"colorNumber": 0xFFDEF9F3, "labelText": "听力", "path": "/"},
  {
    "colorNumber": 0xFFDAF3FF,
    "labelText": "学习设置",
    "path": AppPagesName.settings
  },
  {"colorNumber": 0xFFFFF7DC, "labelText": "学习数据", "path": "/"},
]
    .map((e) => moreFeaturesItem(
        colorNumber: e["colorNumber"] as int,
        labelText: e["labelText"] as String,
        path: e["path"] as String))
    .toList();

void showMoreFeaturesDialog(context) {
  showGeneralDialog(
    context: context,
    pageBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation) {
      return Align(
        alignment: Alignment.topCenter,
        child: Material(
          child: Container(
            constraints: const BoxConstraints(maxHeight: 400),
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
            ),
            child: Padding(
                padding: const EdgeInsets.only(
                    top: 60, left: 15, right: 15, bottom: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "更多功能",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.close)),
                      ],
                    ),
                    GridView(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 0.0,
                                crossAxisCount: 4,
                                childAspectRatio: 0.9),
                        children: moreFeatureItems),
                  ],
                )),
          ),
        ),
      );
    },
    barrierDismissible: true,
    barrierLabel: '',
    barrierColor: Colors.black.withOpacity(0.5),
    transitionDuration: const Duration(milliseconds: 300),
    transitionBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation, Widget child) {
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0.0, -1.0),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );
    },
  );
}

myShowDialogDemo(context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return UnconstrainedBox(
          // constrainedAxis: Axis.vertical,
          alignment: Alignment.topCenter,
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 280,
            ),
            child: const Material(
              type: MaterialType.canvas,
              child: Text("asd"),
            ),
          ),
        );
        // Container(
        //   child: Text("asdsa"),
        // );
        // AlertDialog(
        //   // shape: CircleBorder,
        //   elevation: 10.0,
        //   semanticLabel: "sadasadqweq",
        //   buttonPadding: EdgeInsets.all(0),
        //   content: Text("asd"),
        //   contentPadding: EdgeInsets.zero,
        //   alignment: Alignment.topCenter,
        //   icon: const Icon(Icons.remove_red_eye),
        //   actions: [const Text("asd")],
        //   title: const Text("asd"),
        // );
      });
}

Widget moreFeaturesItem(
    {required int colorNumber,
    required String labelText,
    required String path}) {
  return Column(
    children: [
      Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Color(colorNumber),
              borderRadius: const BorderRadius.all(Radius.circular(15))),
          child: IconButton(
              onPressed: () {
                // Get.to(path, transition: Transition.rightToLeft);
                Get.toNamed(
                  path,
                );
              },
              icon: const Icon(Icons.star_border_outlined))),
      Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Text(labelText),
      )
    ],
  );
}
