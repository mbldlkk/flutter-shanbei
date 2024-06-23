import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/settings/wdiget/list_base.dart';

customListSwitch(
    {required String title, required bool value, required onchange}) {
  return listBase(
    title: title,
    child: Switch(
        value: value,
        // activeColor: Colors.white,
        // inactiveThumbColor: Color(0xFFFFFEFF),

        // activeTrackColor: Color(0xFF26BA9E),
        inactiveTrackColor: const Color(0xFFECEAEC),
        onChanged: (value) {
          onchange();
        }),
  );
}
