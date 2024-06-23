import 'package:flutter_application_1/pages/checkIn/binding.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';

import 'page.dart';

final checkInPage = GetPage(
    name: AppPagesName.checkIn,
    page: () => const CheckInPage(),
    bindings: [CheckInPageBinding()],
    transition: Transition.rightToLeftWithFade);
