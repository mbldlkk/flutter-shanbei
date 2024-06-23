import 'package:get_storage/get_storage.dart';

import 'model/user.dart';

const userKey = "user";

class UserLocalStorage {
  static final localStorge = GetStorage();

  static Future<void> write(UserTokenModel user) async {
    localStorge.write(userKey, user.toJson());
  }

  static UserTokenModel? read() {
    final data = localStorge.read(userKey);
    if (data != null) {
      UserTokenModel.fromJson(data);
    }
    return data;
  }
}
