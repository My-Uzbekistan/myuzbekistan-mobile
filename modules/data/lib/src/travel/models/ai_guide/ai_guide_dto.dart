import 'package:shared/shared.dart';

part 'ai_guide_dto.g.dart';

@JsonSerializable()
class AiGuideDto {
  final String? url;

  AiGuideDto({this.url});

  factory AiGuideDto.fromJson(Map<String, dynamic> json) =>
      _$AiGuideDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AiGuideDtoToJson(this);

  String? toDomain() => (url ?? "").isEmpty ? null : url;
}
