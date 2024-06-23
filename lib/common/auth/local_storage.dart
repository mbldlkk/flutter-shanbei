import 'package:get_storage/get_storage.dart';

const key = "auth";

class AuthLocalStorge {
  static final localStorge = GetStorage();

  static write(String userToken) async {
    await localStorge.write(key, userToken);
  }

  static read() {
    return localStorge.read(key);
  }

  static remove() {
    localStorge.remove(key);
  }
}
