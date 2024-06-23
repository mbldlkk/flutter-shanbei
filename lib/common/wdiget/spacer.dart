import 'package:flutter/material.dart';

class Spacer extends StatelessWidget {
  final int flex;
  const Spacer({super.key, this.flex = 1});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: const SizedBox.shrink(),
    );
  }
}
