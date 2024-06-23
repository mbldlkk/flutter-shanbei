import 'package:flutter/material.dart';

//法一 继承 不受推荐
// class CustomRadio extends Radio {

// final T value;
//   const customRadio({ required this.value, {super.key}}):super({required value, required this.groupValue, required this.onChanged},);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 20,
//       child: super.build(context);
//     );
//   }
// }

// Radio.a

// 写法2 组合
const itemContentTextSize =
    TextStyle(color: Colors.grey, fontWeight: FontWeight.w700);

Widget customRadio<T>(
    {required T value,
    required T? groupValue,
    required ValueChanged<T> onChanged,
    required String labelText}) {
  return InkWell(
    onTap: () => onChanged(value),
    child: Row(
      children: [
        SizedBox(
            width: 26,
            child: Radio(
                // activeColor: Color(0xFF26BA9E),
                splashRadius: 10.0, //点击时 产生的波纹半径
                value: value,
                groupValue: groupValue,
                onChanged: (v) {
                  onChanged(value);
                })),
        Text(labelText, style: itemContentTextSize),
        const SizedBox(
          width: 5,
        )
      ],
    ),
  );
}
