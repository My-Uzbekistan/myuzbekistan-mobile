import 'package:domain/domain.dart';
import 'package:flutter/widgets.dart';
import 'package:travel/src/core/extension.dart';

extension MuseumSortLabel on MuseumSort {
  String label(BuildContext context) => switch (this) {
    MuseumSort.popular => context.localization.museum_sort_popular,
    MuseumSort.priceAsc => context.localization.museum_sort_price_asc,
    MuseumSort.priceDesc => context.localization.museum_sort_price_desc,
    MuseumSort.ratingDesc => context.localization.museum_sort_rating,
    MuseumSort.newest => context.localization.museum_sort_newest,
  };
}
