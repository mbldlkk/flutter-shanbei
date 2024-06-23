import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';

// import 'binding.dart';
import 'page.dart';

final welcomePage = GetPage(
    name: AppPagesName.welcome,
    page: () => const WelcomePage(),
    // bindings: [WelcomePageBinding()],
    transition: Transition.rightToLeftWithFade);
