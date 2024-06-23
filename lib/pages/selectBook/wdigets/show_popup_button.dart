import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/selectBook/controller/tag.dart';
import 'package:flutter_application_1/pages/selectBook/wdigets/popup_tags_section.dart';
import 'package:get/get.dart';

//弹出层视图入口? 也许该放在controller层
late OverlayEntry overlayEntry;

final tagController = Get.find<TagController>();

showPopupButton(context) {
  return IconButton(
      //此处样式需要重启,
      style: IconButton.styleFrom(padding: const EdgeInsets.all(8)),
      onPressed: () {
        tagController.isShowTags.value
            ? overlayEntry.remove()
            : showOverlay(context);

        tagController.setIsShowTags();
      },
      icon: Obx(() => tagController.isShowTags.value
          ? const Icon(Icons.keyboard_arrow_up_outlined)
          : const Icon(Icons.keyboard_arrow_down_outlined)));
}

//由于是在原有 "顶部视图" 的基础上追加弹出层, 所以 showdialog不行?
void showOverlay(BuildContext context) {
  //获取overlayState
  OverlayState overlayState = Overlay.of(context);
  //创建entry
  overlayEntry = OverlayEntry(
    builder: (context) => Positioned(
      top: MediaQuery.of(context).size.height * 0.17,
      width: MediaQuery.of(context).size.width,
      child: Material(
        color: Colors.transparent,
        child: Column(
          children: [
            animatedContainer3(context),
            GestureDetector(
              onTap: () {
                overlayEntry.remove();
                tagController.setIsShowTags();
              },
              child: Container(
                color: Colors.black54,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.9,
              ),
            ),
          ],
        ),
      ),
    ),
  );
  //显示到当前屏幕上
  overlayState.insert(overlayEntry);
}

//通过高度变化,实现向下弹出 标签视图 失败
animatedContainer1({required}) {
  return AnimatedContainer(
    padding: const EdgeInsets.symmetric(horizontal: 25.0),
    duration: const Duration(seconds: 10),
    height: tagController.isShowTags.value ? 500.0 : 0,
    color: Colors.red,
    child: popUpTags(),
  );
}

// 同上 只不过通过TweenAnimationBuilder, 尝试解决上述失败场景 不行!
animatedContainer2(context) {
  return TweenAnimationBuilder(
    tween:
        Tween<double>(begin: 0, end: MediaQuery.of(context).size.height * 0.5),
    duration: const Duration(milliseconds: 9000),
    curve: Curves.easeInOut,
    builder: (context, height, child) {
      return
          // Obx(
          //   () =>
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              color: Colors.white,
              width: double.infinity,
              height: height,
              child: popUpTags())
          // )
          ;
    },
  );
}

//仍然基于 TweenAnimationBuilder, 但通过平移视图实现向下弹出, 而不是高度变化.
animatedContainer3(context) {
  return TweenAnimationBuilder(
    tween: Tween<double>(
        begin: -MediaQuery.of(context).size.height * 0.5, end: -1),
    duration: const Duration(milliseconds: 500),
    curve: Curves.easeInOut,
    builder: (context, value, child) {
      return Container(
        // padding: EdgeInsets.symmetric(horizontal: 15.0),X
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.white, width: 1.0),
            bottom: BorderSide(color: Colors.transparent, width: 1.0),
            // left: BorderSide(color: Colors.white, width: 1.0),
            // right: BorderSide(color: Colors.white, width: 1.0),
            // 这两条边, 裁切没有用到, 不定义也是可以的!
          ),
          color: Colors.black54,
        ),
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.5,
        child: Transform.translate(
            offset: Offset(0, value),
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                color: Colors.white,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.5,
                child: popUpTags())),
      );
    },
  );
}
