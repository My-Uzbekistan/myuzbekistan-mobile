import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import '../../../utils/convertors/image_convertor.dart';

part 'service_action_dto.g.dart';

@JsonSerializable()
class ServiceActionDto {
  final int id;
  final String? name;
  final String? url;
  @ImageConvertor()
  final String? icon;

  ServiceActionDto({required this.id, this.name, this.url, this.icon});

  factory ServiceActionDto.fromJson(Map<String, dynamic> json) =>
      _$ServiceActionDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceActionDtoToJson(this);

  ServiceAction toDomain() =>
      ServiceAction(id: id, name: name, url: url, icon: icon);
}
