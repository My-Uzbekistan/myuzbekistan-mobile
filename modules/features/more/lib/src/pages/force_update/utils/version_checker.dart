import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

import 'new_version.dart';

class VersionChecker {
 static  Future<void> launchAppStore(String appStoreLink) async {
    debugPrint(appStoreLink);
    if (await canLaunchUrl(Uri.parse(appStoreLink))) {
      await launchUrl(Uri.parse(appStoreLink));
    } else {
      throw 'Could not launch appStoreLink';
    }

  }

  static Future<void> check(
    BuildContext context, {
    ValueChanged<VersionStatus>? canUpdate,
  }) async {
    final newVersion = NewVersion(
      androidId: "uz.travel.my.uzb", // Play Store package name
      iOSId: "6744429545", // App Store ID (iOS uchun)
    );
    final status = await newVersion.getVersionStatus();

    if (status == null) return;
    // if (status == null) {
    //   canUpdate?.call(stat);
    // }

    // // current version
    // final packageInfo = await PackageInfo.fromPlatform();
    // final currentVersion = packageInfo.version;

    // agar yangilash kerak bo'lsa - custom UI chaqirasiz
    if (status.canUpdate) {
      canUpdate?.call(status);
    }
  }
}
