import 'dart:developer';

import 'package:flutter_application_1/base/api.dart';
import 'package:flutter_application_1/base/auth_api.dart';

import 'package:flutter_application_1/common/userBook/model/user_book.dart';

const subUrl = "/user-book";

class UserBookApi extends BaseAuthAPi {
  UserBookApi() : super(subUrl: subUrl);

  Future<UserBook> fetchUserBook() async {
    // 不可指定 响应体类型 泛型, 否则可能与响应拦截器有冲突
    final res = await get(
      "",
    );

    // 就是用户书籍数组, 至少先限定数组

    if (res.hasError) {
      throw Exception("获取用户书籍出错");
    }

    final data = res.body as List?;
    log("获取用户书籍, $data");
    if (data == null || data.isEmpty) {
      return UserBook(currentLearningBookId: 0, allbooks: []);
    }

    final userBookRes = data
        .map((i) => UserBookRes.fromJson(i as Map<String, dynamic>))
        .toList();

    //服务端结构重构
    late int currentBookId;

    for (int i = 0; i < userBookRes.length; i = i + 1) {
      if (userBookRes[i].isCurrentLearn == true) {
        currentBookId = userBookRes[i].id;
      }
    }

    final userBookJson = {
      "currentLearningBookId": currentBookId,
      "allbooks": data
    };
    final dd = UserBook.fromJson(userBookJson);

    return dd;
  }

  firstAddUserBook(num bookId) async {
    final res = await post("/first", {"bookId": bookId});
    log("首次添加的书籍是 $bookId,响应为${res.body.toString()}");

    httpStatusExceptionHandle(res.status);
  }

  addUserBook(num bookId) async {
    final res = await post("", {"bookId": bookId});
    log("此次添加的书籍是 $bookId,响应为${res.body.toString()}");
    httpStatusExceptionHandle(res.status);
  }

  deleteBook(int bookId) async {
    final res = await delete("?bookId=$bookId");
    httpStatusExceptionHandle(res.status);
  }

  switchDefaultBook(int bookId) async {
    final res = await patch("", {"bookId", bookId});
    httpStatusExceptionHandle(res.status);
  }
}
