import 'package:flutter_application_1/common/book/model/book.dart';
import 'package:flutter_application_1/pages/selectBook/controller/tag.dart';
import 'package:get/get.dart';

import 'api.dart';

class BookController extends GetxController {
  final bookApi = Get.find<BookApi>();

  final _bookList = Rx<List<BookModel>>([]);
  List<BookModel> get bookList => _bookList.value;
  set bookList(List<BookModel> value) => _bookList.value = value;

  @override
  void onInit() {
    super.onInit();
    // 默认由第一个类别开始 获取书籍
    getBookByTag(allTags[0]);
  }

  getBookByTag(String tag) async {
    final newBookList = await bookApi.getBookByTag(tag);
    bookList = newBookList;
  }
}
