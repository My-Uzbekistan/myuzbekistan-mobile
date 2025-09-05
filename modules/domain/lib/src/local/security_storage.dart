import '../models.dart';

abstract class SecurityStorage {
  Future<void> setToken({required Token token});

  UserModel? getUserModel();

  String? getTopic();

  Future<void> setTopic(String topic);

  String? getAccessToken();

  String? getPin();

  Future<void> setPin(String pin);

  bool isFirstlyLaunch();

  void firstlyLaunched();

  Future<void> changePrayerTimesState(bool value);

  bool isShowPrayerTimes();

  String? getRefreshToken();

  DateTime? getTokenExpire();

  bool hasTokenExpire();

  bool hasPin();

  bool isPinVerified();

  Future<void> setPinVerified();

  void clearPinVerified();

  Future<void> deletePin();

  Future<void> setHasPin(bool hasPin);

  Future<void> clearData();
}
