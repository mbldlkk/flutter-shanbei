import 'package:flutter/widgets.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30.0),
      child: const Column(children: [Text("关于页面")]),
    );
  }
}
