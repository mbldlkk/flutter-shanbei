import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/checkIn/controller.dart';
import 'package:get/get.dart';

class CheckInButton extends StatelessWidget {
  const CheckInButton({super.key});

  @override
  Widget build(BuildContext context) {
    final checkinController = Get.find<CheckInController>();
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        gradient: const LinearGradient(
          colors: [Color(0xFF00C087), Color(0xFF3AD9BE)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent),
          onPressed: () {
            checkinController.toggleCheckIn();
          },
          child: Obx(() {
            if (!checkinController.todayIsCheckIn) {
              return const Text(
                '打卡',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  letterSpacing: 3.0,
                ),
              );
            } else {
              return const Text(
                '已打卡',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  letterSpacing: 3.0,
                ),
              );
            }
          })),
    );
  }
}
