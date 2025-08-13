import 'package:data/src/constants.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared/shared.dart';

@Injectable(as: SecurityStorage)
class SecurityStorageImpl implements SecurityStorage {
  final Box _box;

  SecurityStorageImpl({@Named(StorageConstants.securityBox) required Box box})
    : _box = box;

  @override
  UserModel? getUserModel() {
    final dynamic token = getAccessToken();
    if (token == null) return null;
    final jwt = JwtDecoder.decode(token);
    debugPrint("jwt UserModel $jwt");
    final user = UserModel(
      name: jwt["userName"],
      email: jwt["name"],
      photoUrl: jwt["photoUrl"],
    );
    return user;
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

  @override
  void firstlyLaunched() {
    _box.put("firstlyLaunched", false);
  }

  @override
  bool isFirstlyLaunch() {
    return _box.get("firstlyLaunched") ?? true;
  }
}
