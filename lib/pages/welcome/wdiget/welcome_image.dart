import 'package:flutter/widgets.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({super.key});

  //等等最多5秒,执行每日更新逻辑,并跳转至其他页面

  @override
  Widget build(BuildContext context) {
    return ClipRect(
        child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 1.0, end: 1.4),
            duration: const Duration(seconds: 12),
            curve: Curves.linear,
            builder: (context, value, child) {
              return Transform.scale(
                scale: value,
                child: Image.asset(
                  "assets/welcome.jpg",
                  fit: BoxFit.cover,
                ),
              );
            }));
  }
}
