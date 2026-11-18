import 'package:flutter/foundation.dart';

mixin AppConstants{
  static const baseUrl="https://myuz.uz";
  static const baseApiUrl="https://myuz.uz/api/";
  static const baseDevApiUrl="https://myuz.uz/api/";
  static const httpInspectorEnabled = kDebugMode;
}
mixin StorageConstants {
  static const String securityBox = "myUzblocalesecurityBox01";
  static const String securityAppleBox = "myUzblocalesecurityBox01";
  static const String localeBox = "myUzblocaleStorageBox";
  static const String httpCacheBox = "myUzbHttpCacheBox";
}
