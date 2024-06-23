import 'package:flutter/widgets.dart';

//暂定为 不需要api交互的 静态模块， 名人名言有空再替换为 api请求
class FamousQuotes extends StatelessWidget {
  const FamousQuotes({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 18,
        left: 35,
        right: 35,
      ),
      child: Text(
        "To be yourself in a world that is constantly trying to make you something else is the greatest accomplishment.",
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
