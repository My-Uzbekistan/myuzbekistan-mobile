import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../constants.dart';

class ImageConvertor implements JsonConverter<String?, String?> {
  const ImageConvertor();

  @override
  String? fromJson(String? image) => image != null && image.isNotEmpty
      ? '${AppConstants.baseUrl}$image'
      : null;

  @override
  String? toJson(String? object) => object;
}

class ImageArrayConvertor
    implements JsonConverter<List<String>, List<dynamic>?> {
  const ImageArrayConvertor();

  @override
  List<String> fromJson(List<dynamic>? images) {
    if (images == null) return [];
    return images.map((image) => '${AppConstants.baseUrl}$image').toList();
  }

  @override
  List<String>? toJson(List<String>? object) => object;
}
