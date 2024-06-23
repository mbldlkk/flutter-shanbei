import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/welcome/wdiget/famous_quotes.dart';
import 'package:flutter_application_1/pages/welcome/wdiget/welcome_image.dart';
import 'package:flutter_application_1/styles.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(children: [
      // 欢迎图片
      Expanded(
        flex: 8,
        child: WelcomeImage(),
      ),

      //每日名人名言
      Expanded(
        flex: 1,
        child: FamousQuotes(),
      ),

      //图标
      Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: 18,
                  left: 18,
                ),
                child: Text(
                  "扇贝",
                  style: TextStyle(fontSize: 24, color: AppColor.green),
                ),
              )
            ],
          ))
    ]));
  }
}
