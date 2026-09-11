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
    debugPrint("isUtcClient ${jwt["isUztelecom"]}");
    final user = UserModel(
      name: jwt["userName"],
      email: jwt["name"],
      // Avatar hech qayerga saqlanmaydi — live user-info dan ProfileBloc
      // tomonidan to'ldiriladi. Bu yerda faqat JWT dagi rasm (odatda bo'sh).
      photoUrl: jwt["photoUrl"],
      phoneNumber: _box.get("phone"),
      isUtcClient: jwt["isUztelecom"]=="true"
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
    return _box.get("expiresIn") != null;
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
      "isUtcClient",
      "pin",
      "faceId",
      "profilePictureUrl",
    ]);
  }

  @override
  Future<void> setToken({required Token token}) async {
    await _box.putAll({
      "accessToken": token.accessToken,
      "refreshToken": token.refreshToken,
      "expiresIn": token.expires,
      "hasPin": token.hasPin,
      "phone": token.phone,
    });

  }

  @override
  DateTime? getTokenExpire() {
    final dynamic secondsRaw = _box.get("expiresIn");
    if (secondsRaw == null) return null;

    final int? seconds = secondsRaw is int
        ? secondsRaw
        : secondsRaw is num
            ? secondsRaw.toInt()
            : int.tryParse(secondsRaw.toString());
    if (seconds == null) return null;

    final int millisecondsSinceEpoch = seconds * 1000;
    return DateTime.fromMillisecondsSinceEpoch(
      millisecondsSinceEpoch,
      isUtc: true,
    ).toLocal();
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
  Future<void> changeIqAirWidgetState(bool value) async {
    await _box.put("iqAirWidgetState", value);
  }

  @override
  bool isShowIqAirWidget() {
    return _box.get("iqAirWidgetState") ?? true;
  }

  @override
  Future<void> setPrayerLocationId(int locationId) async {
    await _box.put("prayerLocationId", locationId);
  }

  @override
  int? getPrayerLocationId() {
    return _box.get("prayerLocationId");
  }

  @override
  Future<void> changeNotificationsState(bool value) async {
    await _box.put("notificationsEnabledState", value);
  }

  @override
  bool isNotificationsEnabled() {
    return _box.get("notificationsEnabledState") ?? true;
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
  bool isFaceIdEnabled() {
    return _box.get("faceId", defaultValue: false) ?? false;
  }

  @override
  Future<void> setFaceIdEnabled(bool enabled) async {
    await _box.put("faceId", enabled);
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
    await _box.deleteAll(["pin", "isPinVerified", "hasPin", "faceId"]);
  }

  @override
  String? getTopic() {
    return _box.get("topic");
  }

  @override
  Future<void> setTopic(String topic) async {
    return await _box.put("topic", topic);
  }

  @override
  int? getUserId() {
    final token = getAccessToken();
    if (token == null) return null;
    final jwt = JwtDecoder.decode(token);
    return int.tryParse(jwt["sub"]);
  }
}
