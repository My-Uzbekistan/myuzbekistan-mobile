part of '../navigation_paths.dart';

class FeatureFinanceNavExtension {
  final BuildContext _context;

  FeatureFinanceNavExtension(BuildContext context) : _context = context;

  void pushCardsPage() {
    _context.pushType(AppNavPath.finance.financeCards);
  }

  void pushAddCardPage() {
    _context.pushType(AppNavPath.finance.financeAddCard);
  }

}
