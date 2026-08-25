import 'cart_seller.dart';

class Cart {
  final List<CartSeller> sellers;
  final int totalCount;
  final int selectedCount;
  final int selectedTotal;

  Cart({
    required this.sellers,
    required this.totalCount,
    required this.selectedCount,
    required this.selectedTotal,
  });
}
