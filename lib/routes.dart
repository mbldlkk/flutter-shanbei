import 'package:flutter_application_1/pages/auth/pages/email_sign_in/route.dart';
import 'package:flutter_application_1/pages/init/route.dart';
import 'package:flutter_application_1/pages/welcome/route.dart';

import 'pages/auth/route.dart';
import 'pages/home/route.dart';
import 'pages/study/route.dart';
import 'pages/myBooks/route.dart';
import 'pages/search/route.dart';
import 'pages/selectBook/route.dart';
import 'pages/settings/route.dart';
import 'pages/checkIn/route.dart';

class AppPagesName {
  static const init = "/init";
  static const welcome = "/welcome";
  static const index = "/";

  static const baseSignIn = "/baseSignIn";
  static const emailSignIn = "/emailSignIn";
  static const settings = "/settings";
  static const study = "/study";
  static const selectBook = "/selectBook";
  static const wordSummary = "/wordSummary";
  static const wordNote = "/wordNote";
  static const wordDetail = "/wordDetail";
  static const checkIn = "/checkIn";
  static const myBooks = "/myBooks";
  static const search = "/search";
  static const word = "/word";
}

class AppRoute {
  static final pages = [
    initPage,
    welcomePage,
    baseSignInPage,
    emailSignInPage,
    checkInPage,
    indexPage,
    myBooksPage,
    searchPage,
    selectBookPage,
    settingsPage,
    studyPage,
  ];
}
