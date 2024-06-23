import 'package:flutter/material.dart';

class WordLoadingPage extends StatelessWidget {
  const WordLoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
