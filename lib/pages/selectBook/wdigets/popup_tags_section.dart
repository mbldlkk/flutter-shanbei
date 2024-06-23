import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/selectBook/controller/tag.dart';
import 'package:flutter_application_1/pages/selectBook/wdigets/head_tags_section.dart';
import 'package:flutter_application_1/pages/selectBook/wdigets/popup_tag_item.dart';

popUpTags() {
  return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(tagController.currentTag.value),
        const Text(
          "- 热门 -",
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(
          height: 15.0,
        ),
        Wrap(
            direction: Axis.horizontal,
            spacing: 25.0,
            runSpacing: 15.0,
            children: List.generate(
                popularTags.length,
                (index) => popularTagItem(
                    value: popularTags[index], key: keyList[index]))
            // popularTags.map((e) => popularTagItem(value: e,key: )).toList(),
            ),
        const SizedBox(
          height: 30.0,
        ),
        const Text(
          "- 其他 -",
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(
          height: 15.0,
        ),
        Wrap(
            direction: Axis.horizontal,
            spacing: 25.0,
            runSpacing: 15.0,
            children: List.generate(
                notPopularTags.length,
                (index) => notPopularTagItem(
                    value: notPopularTags[index],
                    key: keyList[index + popularTags.length]))
            // notPopularTags
            // .map((e) => notPopularTagItem(value: e))
            // .toList(),
            )
      ]);
}
