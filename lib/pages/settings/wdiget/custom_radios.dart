import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/settings/wdiget/custom_radio.dart';
import 'package:flutter_application_1/pages/settings/wdiget/list_base.dart';

customRadios<T>({
  required String title,
  required Map<T, String> valueLabelTextMap,
  required T? groupValue,
  required ValueChanged<T> onChanged,
  // required List<String> labelText,
}) {
  return listBase(
      title: title,
      child: Row(
        children: valueLabelTextMap.entries
            .map((e) => customRadio(
                value: e.key,
                groupValue: groupValue,
                onChanged: onChanged,
                labelText: e.value))
            .toList(),
      ));
}
