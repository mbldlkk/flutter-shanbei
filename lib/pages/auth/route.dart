import 'package:flutter_application_1/common/auth/binding.dart';
import 'package:flutter_application_1/pages/auth/binding.dart';

import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';

// import 'binding.dart';
import 'page.dart';

const email = "/email";

final baseSignInPage = GetPage(
  name: AppPagesName.baseSignIn,
  page: () => const SignInPage(), //不是以const类型?
  bindings: [AuthPageBinding(), CommonAuthBinding()],
);
