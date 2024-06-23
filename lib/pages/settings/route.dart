import 'package:flutter_application_1/common/settings/binding.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';

// import 'binding.dart';
import 'page.dart';

final settingsPage = GetPage(
    name: AppPagesName.settings,
    page: () => const SettingsPage(),
    bindings: [CommonSettingsBinding()],
    transition: Transition.rightToLeftWithFade);
