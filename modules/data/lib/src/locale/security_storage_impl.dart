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
  bool isPinVerified() {
    return _box.get("isPinVerified", defaultValue: false) ?? false;
  }

  @override
  Future<void> setPinVerified() async {
    await _box.put("isPinVerified", true);
  }

  @override
  Future<void> clearPinVerified() async {
    await _box.put("isPinVerified", false);
  }

  @override
  Future<void> clearData() async {
    await _box.deleteAll([
      "accessToken",
      "refreshToken",
      "expiresIn",
      "hasPin",
      "isPinVerified",
      "pin",
    ]);
  }

  @override
  Future<void> setToken({required Token token}) async {
    await _box.put("accessToken", token.accessToken);
    await _box.put("refreshToken", token.refreshToken);
    await _box.put("expiresIn", token.expires);
    await _box.put("hasPin", token.hasPin);
  }

  @override
  DateTime? getTokenExpire() {
    final secund = _box.get("expiresIn");
    if (secund == null) return null;
    final microsecondsSinceEpoch = secund * 1000;
    return DateTime.fromMillisecondsSinceEpoch(microsecondsSinceEpoch,isUtc: false);
  }

  @override
  void firstlyLaunched() {
    _box.put("firstlyLaunched", false);
  }

  @override
  bool isFirstlyLaunch() {
    return _box.get("firstlyLaunched") ?? true;
  }

  @override
  Future<void> changePrayerTimesState(bool value) async {
    await _box.put("prayerTimeState", value);
  }

  @override
  bool isShowPrayerTimes() {
    return _box.get("prayerTimeState") ?? false;
  }

  @override
  bool hasPin() {
    return _box.get("hasPin", defaultValue: false) ?? false;
  }

  @override
  Future<void> setHasPin(bool hasPin) async {
    await _box.put("hasPin", hasPin);
  }

  @override
  String? getPin() {
    return _box.get("pin");
  }

  @override
  Future<void> setPin(String pin) async {
    await _box.put("pin", pin);
  }

  @override
  Future<void> deletePin() async {
    await _box.deleteAll(["pin", "isPinVerified", "hasPin"]);
  }

  @override
  String? getTopic() {
    return _box.get("topic");
  }

  @override
  Future<void> setTopic(String topic) async {
    return await _box.put("topic", topic);
  }
}
