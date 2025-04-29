part of '../home_groups.dart';

class HomeGroupData {
  final int categoryId;
  final MainPageContent? recommended;
  final String title;
  final List<MainPageContent> items;

  HomeGroupData({
    required this.categoryId,
    required this.title,
    this.recommended,
    required this.items,
  });
}

@immutable
class Recommended {
  final String title;
  final String description;
  final String? image;

  const Recommended(
      {required this.title, required this.description, this.image});
}
