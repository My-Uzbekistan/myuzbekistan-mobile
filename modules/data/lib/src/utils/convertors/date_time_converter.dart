import 'package:shared/shared.dart';

class DateTimeConverter implements JsonConverter<DateTime?, String?> {
  const DateTimeConverter();

  @override
  DateTime? fromJson(String? json) {
    if (json == null) return null;
    try {
      return DateTime.parse(json).toLocal();
    } catch (e) {
      return null;
    }
  }

  @override
  String? toJson(DateTime? object) {
    return object?.toIso8601String();
  }
}
