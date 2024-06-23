import 'dart:developer';

import 'package:flutter_application_1/common/book/model/book.dart';
import 'package:get/get.dart';

import 'api.dart';
import 'local_storage.dart';
import 'model/user_book.dart';

class UserBookController extends GetxController {
  //书籍名
  final _name = Rxn<String>("");
  String? get name => _name.value;
  set name(String? value) => _name.value = value;

  //书籍单词计数
  final _wordCount = Rxn<int>();
  int? get wordCount => _wordCount.value;
  set wordCount(int? value) => _wordCount.value = value;

  //所有书籍
  final _allBook = Rx<List<BookModel>>([]);
  List<BookModel> get allBook => _allBook.value;
  set allBook(List<BookModel> value) => _allBook.value = value;

  final bookApi = Get.find<UserBookApi>();

  //当前默认学习书籍id
  late int currentBookId;

  @override
  void onInit() {
    super.onInit();
    //尝试从本地加载
    final userBooks = UserBookLocalStorage.read();

    log("本地获取用户书籍，$userBooks");

    // 有书

    if (userBooks != null && userBooks.allbooks.isNotEmpty) {
      final userAllBook = userBooks.allbooks;
      //修改默认书籍state
      for (int i = 0; i < userAllBook.length; i = i + 1) {
        if (userAllBook[i].id == userBooks.currentLearningBookId) {
          name = userAllBook[i].name;
          wordCount = userAllBook[i].wordCount;
          log("修改当前用户书籍状态");
          break;
        }
      }
      //修改 allbooks state

      allBook = userBooks.allbooks;
      currentBookId = userBooks.currentLearningBookId;
    }

    //没有书籍?
  }

  addNewBook(
      {required int bookId,
      required int bookWordCount,
      required String bookName}) async {
    try {
      bool isEmpty = allBook.isEmpty;

      //如果用户没有书籍,添加并设置为默认书籍
      if (allBook.isEmpty) {
        await bookApi.firstAddUserBook(bookId);
        currentBookId = bookId;
        name = bookName;
        wordCount = bookWordCount;
      } else {
        await bookApi.addUserBook(bookId);
        //返回mybooks
      }

      //如果服务端成功响应, 那就直接 将用户当前点击的书籍信息注入到 当前状态中
      final newAllBook = [
        ...allBook,
        BookModel(
          id: bookId,
          name: bookName,
          wordCount: bookWordCount,
        )
      ];

      allBook = newAllBook;

      //持久化当前学习书籍
      UserBookLocalStorage.write(
          UserBook(currentLearningBookId: currentBookId, allbooks: newAllBook));
      return isEmpty;
    } catch (e, s) {
      log("添加书籍出错, 错误信息 $e, $s ");
      Get.snackbar("书籍添加错误", "您已经添加该书籍！");
    }
  }

  deleteBook(int bookId) async {
    await bookApi.deleteBook(bookId);

    List<BookModel> newAllBook = [];
    //生成剔除书籍id 新书籍列表
    for (int i = 0; i < allBook.length; i = i + 1) {
      if (allBook[i].id != bookId) {
        newAllBook.add(allBook[i]);
      }
    }

    log(newAllBook.toString());
    //设置新的allbook状态
    allBook = newAllBook;

    UserBookLocalStorage.write(
        UserBook(currentLearningBookId: currentBookId, allbooks: newAllBook));
  }

  switchDefaultBook(int bookId, String name, int wordCount) async {
    //服务端切换书籍
    await bookApi.switchDefaultBook(bookId);
    //修改覆盖默认书籍信息
    name = name;
    wordCount = wordCount;

    currentBookId = bookId;

    //持久化
    UserBookLocalStorage.write(
        UserBook(currentLearningBookId: bookId, allbooks: allBook));
  }

  modifyDefaultUserBook() {}
}
