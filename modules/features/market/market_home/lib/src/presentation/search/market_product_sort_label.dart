import 'package:domain/domain.dart';
import 'package:flutter/widgets.dart';
import 'package:market_home/src/core/extension.dart';

extension MarketProductSortLabel on MarketProductSort {
  String label(BuildContext context) => switch (this) {
    MarketProductSort.popular => context.localization.market_sort_popular,
    MarketProductSort.cheap => context.localization.market_sort_cheap,
    MarketProductSort.expensive => context.localization.market_sort_expensive,
    MarketProductSort.rating => context.localization.market_sort_rating,
  };
}
