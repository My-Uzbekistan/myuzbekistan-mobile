//
// {
// "id": 5,
// "title": "Test Uzbek Title sssss",
// "description": "Uzbek Description ss",
// "bannerUrl": "https://minio.uzdc.uz/myzubekistan/uploads/954cb9de-ef8c-4531-910b-473d3f685381/uploads/MyUzbekistan 8-dekabr.webp",
// "referenceType": 0,
// "referenceId": null,
// "actionLink": null
// }

class OnboardingItem {
  int id;
  String title;
  String bannerUrl;
  String? description;
  String? actionLink;


  OnboardingItem({
    required this.id,
    required this.title,
    required this.bannerUrl,
    this.description,
    this.actionLink,
  });
}