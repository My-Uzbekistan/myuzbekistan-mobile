import 'package:upgrader/upgrader.dart';
import 'package:version/version.dart';

class MockUpgraderAppStore extends UpgraderStore {
  MockUpgraderAppStore();

  @override
  Future<UpgraderVersionInfo> getVersionInfo({
    required UpgraderState state,
    required Version installedVersion,
    required String? country,
    required String? language,
  }) async => UpgraderVersionInfo(
    installedVersion: installedVersion,
    appStoreListingURL:
        'https://play.google.com/store/apps/details?id=uz.travel.my.uzb',
    appStoreVersion: Version(
      installedVersion.major,
      installedVersion.minor + 1,
      0,
    ),
    minAppVersion: installedVersion,
  );
}
