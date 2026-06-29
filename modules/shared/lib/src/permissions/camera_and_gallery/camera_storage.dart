import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';

mixin CameraStoragePermission {
  static Future<File?> openFile({required ImageSource source}) async {
    final xFile = await ImagePicker().pickImage(
      source: source,
      imageQuality: 70,
      maxWidth: 1080,
      maxHeight: 1080,
    );
    return xFile != null ? File(xFile.path) : null;
  }

  static Future<List<File>> multiImage() async {
    final images = await ImagePicker().pickMultiImage();
    return images.map((e) => File(e.path)).toList();
  }

  static String formatFileSize(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) {
      return '${(bytes / 1024).toStringAsFixed(1)} KB';
    }
    return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
  }
}