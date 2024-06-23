import 'dart:developer';

import 'package:video_player/video_player.dart';

//思路1 直接全局 控制

final VideoPlayerController videoPlayerController =
    VideoPlayerController.asset("assets/sun.mp4")
      ..initialize().then((_) {
        log("初始化视频加载中", name: "Getx");
        videoPlayerController.setLooping(true);

        // videoPlayerController.play();
        // videoIsReady.value = true;
      });

//思路2 基于 GetX
// import 'package:get/get.dart';

// class VideoController extends GetxController {
//   late VideoPlayerController videoPlayerController;

//   //可以直接使用 视频初始化值
//   // final videoIsReady = false.obs;

//   @override
//   void onInit() {
//     log("视频控制器正在初始化...", name: "GetX-log");
//     super.onInit();
//     videoPlayerController = VideoPlayerController.asset("assets/sun.mp4")
//       ..initialize().then((_) {
//         videoPlayerController.setLooping(true);

//         videoPlayerController.play();
//         // videoIsReady.value = true;
//       });
//   }

//   @override
//   void onClose() {
//     log("视频控制器销毁中...", name: "GetX-log");
//     videoPlayerController.dispose();
//     super.onClose();
//   }
// }
