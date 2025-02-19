part of 'home_groups.dart';

class HomeGroupData {
  final Recommended? recommended;
  final HomeListCellData contents;
  HomeGroupData({this.recommended, required this.contents});
}

@immutable
class Recommended {
  final String title;
  final String description;
  final String? image;

  const Recommended(
      {required this.title, required this.description, this.image});
}

class HomeListCellData {
  final String title;
  final List<HomeListCellContent> contents;
  HomeListCellData({required this.title, required this.contents});
}

class HomeListCellContent {
  String? imageUrl;
  String? title;
  String? description;
  int? star;
  double? rate;
  int? priceRate;

  HomeListCellContent(
      {this.title,
      this.description,
      this.imageUrl,
      this.star,
      this.rate,
      this.priceRate});
}
