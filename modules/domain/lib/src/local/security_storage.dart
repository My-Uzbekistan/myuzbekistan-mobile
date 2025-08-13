
import '../models.dart';

abstract class SecurityStorage {

  Future<void> setToken({required Token token});

  UserModel? getUserModel();



  String? getAccessToken();
  bool isFirstlyLaunch();
  void firstlyLaunched();

  String? getRefreshToken();

  bool hasTokenExpire();

  Future<void> clearData();
}
