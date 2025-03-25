import 'package:core/src/constants.dart';
import 'package:core/src/shared/local/security_storage.dart';
import 'package:core/src/shared/user_model.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../domain/models/Token.dart';

@Injectable(as: SecurityStorage)
class SecurityStorageImpl implements SecurityStorage {
  final Box _box;

  SecurityStorageImpl({@Named(StorageConstants.securityBox) required Box box})
      : _box = box;

  @override
  UserModel? getUserModel() {
    final dynamic userModel = _box.get(
      "userModel",
    );
    if (userModel == null) return null;
    final user = UserModel.fromJson(userModel);
    return user;
  }


  @override
  Future<void> setUserModel(
      {required UserModel userModel,}) async {
    await _box.put("userModel", userModel.toJson());
  }


  @override
  String? getAccessToken() {
    return _box.get("accessToken");
  }

  @override
  String? getRefreshToken() {
    return _box.get("refreshToken");
  }

  @override
  bool hasTokenExpire() {
    return false;
  }


  @override
  Future<void> clearData() async {
    await _box.clear();
  }

  @override
  Future<void> setToken({required Token token}) async {

    await _box.put("accessToken", token.accessToken);
    await _box.put("refreshToken", token.refreshToken);
    await _box.put("expiresIn", token.expires);
  }
}
