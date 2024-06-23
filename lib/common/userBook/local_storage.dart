import 'dart:developer';
import 'package:get_storage/get_storage.dart';

import 'model/user_book.dart';

const userKey = "userBook";

class UserBookLocalStorage {
  static final localStorge = GetStorage();

  static Future<void> write(UserBook userBook) async {
    await localStorge.write(userKey, userBook.toJson());
  }

  static UserBook? read() {
    final data = (localStorge.read(userKey) as Map<String, dynamic>?);

    log("本地缓存-用户书籍: $data; 类型: ${data.runtimeType}");
    if (data == null) {
      return null;
    }

    return UserBook.fromJson(data);
  }
}
