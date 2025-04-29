import 'package:core/src/domain/models/Token.dart';
import 'package:core/src/shared/user_model.dart';

abstract class SecurityStorage {

  Future<void> setToken({required Token token});

  UserModel? getUserModel();



  String? getAccessToken();

  String? getRefreshToken();

  bool hasTokenExpire();

  Future<void> clearData();
}
