import 'package:flutter_application_1/pages/auth/wdiget/background_video.dart';
import 'package:flutter_application_1/pages/auth/wdiget/base_signin.dart';

import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Stack(
      children: [BackgroundVideo(), BaseSignIn()],
    ));
  }
}
