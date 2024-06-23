import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/auth/wdiget/background_video_controller.dart';

import 'package:video_player/video_player.dart';

//基于 StatelessWidget + 原本的视频控制器
class BackgroundVideo extends StatelessWidget {
  const BackgroundVideo({super.key});

  @override
  Widget build(BuildContext context) {
    //由于 在初始页面 已经对视频初始化了, 所以不需要进度条?
    return Column(
      children: [
        Expanded(
          child: VideoPlayer(videoPlayerController),
        )
      ],
    );
  }
}




















//法2 基于StatefulWidget 实现

// class BackgroundVideo extends StatefulWidget {
//   const BackgroundVideo({super.key});

//   @override
//   State<BackgroundVideo> createState() => _BackgroundVideoState();
// }

// class _BackgroundVideoState extends State<BackgroundVideo> {
//   late VideoPlayerController _controller;

//   @override
//   void initState() {
//     super.initState();

//     _controller = VideoPlayerController.asset('assets/sun.mp4')
//       ..initialize().then((_) {
//         log("_controller.value.isInitialized 是 ${_controller.value.isInitialized}");
//         _controller.play();
//         _controller.setLooping(true);
//         setState(() {}); // 当视频初始化后，更新界面
//       });
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }

//   pause(){
//     _controller.pause();
//   }

//   play(){
//      _controller.play();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return _controller.value.isInitialized
//         ? Expanded(
//             child: VideoPlayer(_controller),
//           )
//         : const CircularProgressIndicator();
//   }
// }
