import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/styles.dart';

class TodayReviewWord extends StatelessWidget {
  final int wordCount;
  const TodayReviewWord({super.key, required this.wordCount});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 110,
          height: 110,
          // color: Colors.red,
          decoration: BoxDecoration(
            // gradient: SweepGradient(
            //     colors: [Color(0xFF0FC5A2), Color(0xFF00A767)]),
            shape: BoxShape.circle,

            border: Border.all(
              color: wordCount > 0 ? AppColor.green : const Color(0xFFC8CCCE),
              width: 8,
            ),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$wordCount',
                style:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
              ),
              const Text(
                "REVIEW",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              )
            ],
          ),
        ),
        const Expanded(flex: 1, child: SizedBox.shrink()),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                width: 30,
                height: 8,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    gradient: LinearGradient(
                        colors: [Color(0xFFE2CBA4), Color(0xFFFBC100)])),
              ),
            ),
            Positioned(
                bottom: 0,
                left: 5,
                child: Text(
                  "今日新词: $wordCount 个",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w700),
                ))
          ],
        ),
        const Expanded(flex: 5, child: SizedBox.shrink()),
      ],
    );
  }
}
