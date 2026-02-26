import 'package:upgrader/upgrader.dart';
import 'package:version/version.dart';

class MockUpgraderAppStore extends UpgraderStore {
  MockUpgraderAppStore();

  @override
  Future<UpgraderVersionInfo> getVersionInfo(
      {required UpgraderState state,
        required Version installedVersion,
        required String? country,
        required String? language}) async =>
      UpgraderVersionInfo(
        appStoreListingURL:
        'https://play.google.com/store/apps/details?id=uz.travel.my.uzb',
        appStoreVersion: Version.parse('1.6.7'),
        installedVersion: Version.parse('1.6.4'), // this is not used by Upgrader, installed version is from app's pubspec.yaml
        releaseNotes: 'test release notes',
        isCriticalUpdate: null,
        minAppVersion: Version.parse('1.1.1'),
      );
}