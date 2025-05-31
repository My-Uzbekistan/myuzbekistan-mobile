

import 'dart:io';

import '../../shared.dart';


mixin CameraStoragePermission{
  static Future<bool> getCameraPermission() async {
    PermissionStatus permissionStatus = await Permission.camera.status;
    if (permissionStatus.isGranted) {
      return true;
    } else if (permissionStatus.isDenied) {
      PermissionStatus status = await Permission.camera.request();
      if (status.isGranted) {
        return true;
      } else {
        return false;
      }
    }
    return false;
  }

  static Future<bool> checkAndroidStoragePermission() async {
    if (Platform.isAndroid) {
      final mediastatus = await Permission.mediaLibrary.request();
      if (mediastatus.isGranted) {
        return true;
      } else {
        final status = await Permission.mediaLibrary.request();
        return status.isGranted;
      }
    } else {
      return true;
    }
  }

}