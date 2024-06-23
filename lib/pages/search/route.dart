import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';

import 'page.dart';

final searchPage = GetPage(
    name: AppPagesName.search,
    page: () => const SearchPage(),
    // bindings: [IndexBinding()],
    transition: Transition.rightToLeftWithFade);
