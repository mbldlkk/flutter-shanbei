import 'package:flutter/material.dart';

import 'package:flutter_application_1/styles.dart';

class TagItem extends StatefulWidget {
  const TagItem({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onTap,
  });
  final String value;
  final String groupValue;
  final void Function()? onTap;

  @override
  State<TagItem> createState() => _TagItemState();
}

class _TagItemState extends State<TagItem> {
  bool _isSelected = false;
  late final String _tagName;
  late final void Function()? _onTap;
  @override
  void initState() {
    super.initState();
    _tagName = widget.value;
    _onTap = widget.onTap;
    _isSelected = widget.groupValue == _tagName;
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 200),
      child: InkWell(
        onTap: _onTap,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    _tagName,
                    style: TextStyle(
                        fontSize: 18,
                        color: _isSelected ? AppColor.green : Colors.black,
                        fontWeight: FontWeight.w800),
                  ),
                  _isSelected
                      ? Container(
                          width: 24.0,
                          height: 3.0,
                          margin: const EdgeInsets.only(
                              top: 5.0, left: 1.0, right: 1.0),
                          decoration: BoxDecoration(
                              color:
                                  _isSelected ? AppColor.green : Colors.black,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                        )
                      : const SizedBox(
                          height: 1.0,
                        ),
                ])),
      ),
    );
  }
}

// final tagswidget = allTags
//     .map((e) => TagItem(
//           value: e,
//           groupValue: tagController.currentTag.value,
//           onTap: () {
//             debugPrint("$e sadasda");
//             tagController.setCurrentTag(e);
//           },
//         ))
//     .toList();

// 方案2
class TagItem2 extends StatelessWidget {
  final String value;
  final String groupValue;
  final void Function()? onTap;
  // final Key key;

  const TagItem2({
    required super.key,
    required this.value,
    required this.groupValue,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    bool isSelected = value == groupValue;

    return ConstrainedBox(
      // key: key,
      constraints: const BoxConstraints(maxWidth: 200),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                InkWell(
                  onTap: onTap,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                    child: Text(
                      value,
                      style: TextStyle(
                          fontSize: 18,
                          color: isSelected ? AppColor.green : Colors.black,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),

                // 下划导航线
                isSelected
                    ? Container(
                        width: 24.0,
                        height: 3.0,
                        margin: const EdgeInsets.only(
                            top: 5.0, left: 1.0, right: 1.0),
                        decoration: BoxDecoration(
                            color: isSelected ? AppColor.green : Colors.black,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                      )
                    : const SizedBox(
                        height: 1.0,
                      ),
              ])),
    );
  }
}
