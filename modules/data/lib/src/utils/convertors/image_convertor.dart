import 'package:flutter/cupertino.dart';
import 'package:shared/shared.dart';

import '../../constants.dart';

class ImageConvertor implements JsonConverter<String?, String?> {
  const ImageConvertor();

  @override
  String? fromJson(String? image) => _convertImage(image);

  @override
  String? toJson(String? object) => object;
}

class ImageArrayConvertor
    implements JsonConverter<List<String>, List<dynamic>?> {
  const ImageArrayConvertor();

  @override
  List<String> fromJson(List<dynamic>? images) {
    if (images == null) return [];
    return images.map((image) => _convertImage(image)).nonNulls.toList();
  }

  @override
  List<String>? toJson(List<String>? object) => object;
}

String? _convertImage(String? image) {
  if (image == null || image.isEmpty) return null;

  // HTTPS url'larni tuzatish
  if (image.startsWith("https:/") && !image.startsWith("https://")) {
    image = image.replaceFirst("https:/", "https://");
  }

  // To'liq URL bo'lsa
  if (image.startsWith("https://")) return image;

  // Relative path
  return image.startsWith("/")
      ? '${AppConstants.baseUrl}$image'
      : '${AppConstants.baseUrl}/$image';
}
