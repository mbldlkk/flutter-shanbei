import 'package:flutter_application_1/pages/myBooks/binding.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';

import 'page.dart';

final myBooksPage = GetPage(
  name: AppPagesName.myBooks,
  page: () => const MyBooksPage(),
  bindings: [UserBookBinding()],
);
