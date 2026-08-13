import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';

class DeviceInfoManager {
  static final DeviceInfoManager _instance = DeviceInfoManager._internal();

  factory DeviceInfoManager() => _instance;

  DeviceInfoManager._internal();

  static const String _appName = 'MyUzApp';
  static const String _userAgentHeader = 'User-Agent';
  static const String _deviceModelHeader = 'X-Device-Model';
  static const String _appVersionHeader = 'X-App-Version';
  static const String _osVersionHeader = 'X-Os-Version';

  Map<String, String>? _headers;
  Future<Map<String, String>>? _loading;

  Future<void> init() => headers();

  Future<Map<String, String>> headers() {
    final loaded = _headers;
    if (loaded != null) return Future.value(loaded);
    return _loading ??= _load();
  }

  Future<Map<String, String>> _load() async {
    final appVersion = await _appVersion();
    final osName =
        Platform.isIOS ? 'iOS' : (Platform.isAndroid ? 'Android' : '');
    final osVersion = await _osVersion();
    final deviceModel = await _deviceModel();

    final platformPart = [
      osName,
      osVersion,
    ].where((e) => e.isNotEmpty).join(' ');
    final userAgentDetails = [
      platformPart,
      deviceModel,
    ].where((e) => e.isNotEmpty).join('; ');

    final headers = <String, String>{
      _userAgentHeader: '$_appName/$appVersion ($userAgentDetails)',
      if (deviceModel.isNotEmpty) _deviceModelHeader: deviceModel,
      if (appVersion.isNotEmpty) _appVersionHeader: appVersion,
      if (osVersion.isNotEmpty) _osVersionHeader: osVersion,
    };

    _headers = headers;
    return headers;
  }

  Future<String> _appVersion() async {
    try {
      final packageInfo = await PackageInfo.fromPlatform();
      return packageInfo.version;
    } catch (_) {
      return '';
    }
  }

  Future<String> _osVersion() async {
    try {
      if (Platform.isIOS) {
        return (await DeviceInfoPlugin().iosInfo).systemVersion;
      }
      if (Platform.isAndroid) {
        return (await DeviceInfoPlugin().androidInfo).version.release;
      }
    } catch (_) {}
    return '';
  }

  Future<String> _deviceModel() async {
    try {
      if (Platform.isIOS) {
        return (await DeviceInfoPlugin().iosInfo).modelName;
      }
      if (Platform.isAndroid) {
        return (await DeviceInfoPlugin().androidInfo).model;
      }
    } catch (_) {}
    return '';
  }
}
