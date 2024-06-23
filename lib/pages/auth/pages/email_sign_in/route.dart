import 'package:flutter_application_1/common/auth/binding.dart';
import 'package:flutter_application_1/pages/auth/pages/email_sign_in/binding.dart';

import 'package:flutter_application_1/pages/auth/pages/email_sign_in/page.dart';

import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';

final emailSignInPage = GetPage(
    name: AppPagesName.emailSignIn,
    bindings: [CommonAuthBinding(), EmailSignInPageBinding()],
    page: () => const EmailSignInPage());
