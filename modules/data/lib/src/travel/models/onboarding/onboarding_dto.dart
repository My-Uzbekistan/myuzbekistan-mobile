// {
// "id": 5,
// "title": "Test Uzbek Title sssss",
// "description": "Uzbek Description ss",
// "bannerUrl": "https://minio.uzdc.uz/myzubekistan/uploads/954cb9de-ef8c-4531-910b-473d3f685381/uploads/MyUzbekistan 8-dekabr.webp",
// "referenceType": 0,
// "referenceId": null,
// "actionLink": null
// }
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'onboarding_dto.g.dart';

@JsonSerializable()
class OnboardingDto {
  int id;
  String title;
  String bannerUrl;
  String? description;
  String? actionLink;

  OnboardingDto({
    required this.id,
    required this.title,
    required this.bannerUrl,
    this.description,
    this.actionLink,
  });

  factory OnboardingDto.fromJson(Map<String, dynamic> json) =>
      _$OnboardingDtoFromJson(json);

  OnboardingItem toDomain() => OnboardingItem(
    id: id,
    title: title,
    bannerUrl: bannerUrl,
    description: description,
    actionLink: actionLink,
  );
}
