import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

class AppActionTypeConvertor implements JsonConverter<AppActionType, Object?> {
  const AppActionTypeConvertor();

  @override
  AppActionType fromJson(Object? json) => AppActionType.values.firstWhere(
    (e) => e.name == json,
    orElse: () => AppActionType.inner,
  );

  @override
  Object? toJson(AppActionType object) => object.name;
}
