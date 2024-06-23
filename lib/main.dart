import 'package:flutter_application_1/styles.dart';
import "package:get/get.dart";
import 'package:get_storage/get_storage.dart';

import 'routes.dart';
import 'package:flutter/material.dart';

void main() async {
  await GetStorage.init();

  // 测试,每次运行app时清除之前的本地数据
  GetStorage().erase();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        switchTheme: SwitchThemeData(
          thumbColor: WidgetStateProperty.resolveWith<Color?>(
              (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return Colors.purple;
            }
            if (states.contains(WidgetState.selected)) {
              return Colors.white;
            }
            return Colors.white;
          }),
          // trackOutlineColor: WidgetStateProperty.all(Colors.transparent),
          // thumbIcon:
          // WidgetStateProperty.all(Icon(Icons.satellite_alt_sharp))
          trackColor: WidgetStateProperty.resolveWith<Color?>(
              (Set<WidgetState> states) {
            if (states.contains(WidgetState.selected)) {
              return AppColor.green;
            }
            return const Color(0xFFECEAEC);
          }),
        ),
        checkboxTheme: CheckboxThemeData(
          // fillColor: WidgetStateProperty.all(AppColor.green),
          checkColor: WidgetStateProperty.all(Colors.white),
        ),
        inputDecorationTheme: const InputDecorationTheme(
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColor.green))),
        radioTheme: RadioThemeData(
          fillColor: WidgetStateProperty.resolveWith<Color?>(
              (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return null;
            }
            if (states.contains(WidgetState.selected)) {
              return AppColor.green;
            }
            return null;
          }),
        ),
        progressIndicatorTheme: const ProgressIndicatorThemeData(
            color: AppColor.green, linearTrackColor: Color(0xFFF4F3F7)),
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColor.green,
          primaryContainer: Colors.orange,
          onPrimaryContainer: Colors.orange,
          primary: Colors.red,
          onPrimary: Colors.pink,
          secondary: Colors.yellow,
          onSecondary: Colors.amber,
          // background: Colors.orange, 页面主体内容的背景颜色
          // surface: Colors.orange,  Appbar的背景颜色

          tertiary: Colors.blueAccent,
          onTertiary: Colors.orange,
        ),

        // toggleButtonsTheme: ,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 14.0),
                backgroundColor: AppColor.lightGreen,
                shadowColor: Colors.transparent,
                foregroundColor: AppColor.green,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                minimumSize:
                    Size.zero, // Set this,如果说设置的是最小尺寸, 为什么没法工作? 因为设置了固定尺寸为0
                padding: const EdgeInsets.symmetric(
                    vertical: 1.0, horizontal: 10.0), // and this
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3.0),
                )

                //       shape:
                //           WidgetStatePropertyAll(RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(10.0),
                )),

        iconButtonTheme: IconButtonThemeData(
            style: IconButton.styleFrom(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                minimumSize: Size.zero)),

        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 14.0),
              // backgroundColor: Color(0xFFECFAF8),
              shadowColor: Colors.transparent,
              foregroundColor: AppColor.green,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              side: const BorderSide(color: AppColor.green),
              minimumSize:
                  Size.zero, // Set this,如果说设置的是最小尺寸, 为什么没法工作? 因为设置了固定尺寸为0
              padding: const EdgeInsets.symmetric(
                  vertical: 1.0, horizontal: 10.0), // and this
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3.0),
              )),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 14.0),
              // backgroundColor: Color(0xFFECFAF8),
              shadowColor: Colors.transparent,
              foregroundColor: AppColor.green,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              minimumSize:
                  Size.zero, // Set this,如果说设置的是最小尺寸, 为什么没法工作? 因为设置了固定尺寸为0
              padding: const EdgeInsets.symmetric(
                  vertical: 1.0, horizontal: 10.0), // and this
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3.0),
              )),
        ),
        useMaterial3: true,
      ),
      initialRoute: AppPagesName.baseSignIn,
      getPages: AppRoute.pages,
    );
  }
}
