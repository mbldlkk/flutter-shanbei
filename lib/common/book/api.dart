import 'dart:developer';

import 'package:flutter_application_1/base/api.dart';
import 'package:flutter_application_1/common/book/model/book.dart';

const subUrl = "/book/";

class BookApi extends BaseApi {
  BookApi() : super(subUrl: subUrl);

  Future<List<BookModel>> getBookByTag(String tag) async {
    final res = await get(tag);
    log("书签$tag 对应的书籍有:  ${res.body} ${res.body.runtimeType}");
    httpStatusExceptionHandle(res.status);
    return (res.body as List<dynamic>)
        .map((e) => BookModel.fromJson(e))
        .toList();
  }
}
