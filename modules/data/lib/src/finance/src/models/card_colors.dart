//
// {name: Green, colorCode: #2EA866, id: 1},
// {name: Medium Green, colorCode: #3DCC78, id: 2},
// {name: Orange, colorCode: #FDA543, id: 3},
// {name: Red Orange, colorCode: #FF6848, id: 4},
// {name: Rose Pink, colorCode: #F65B71, id: 5},
// {name: Medium Purple, colorCode: #A464C4, id: 6},
// {name: Light Purple, colorCode: #CB83FC, id: 7}

import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'card_colors.g.dart';

@JsonSerializable()
class CardColors {
  final List<CardColorDto> items;

  CardColors({required this.items});

  factory CardColors.fromJson(Map<String, dynamic> json) =>
      _$CardColorsFromJson(json);
}

@JsonSerializable()
class CardColorDto {
  final String? image;

  CardColorDto({this.image});
  factory CardColorDto.fromJson(Map<String, dynamic> json) =>
      _$CardColorDtoFromJson(json);
}
