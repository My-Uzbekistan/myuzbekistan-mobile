import 'cart_item.dart';

class CartSeller {
  final int id;
  final String name;
  final String type;
  final List<CartItem> items;

  CartSeller({
    required this.id,
    required this.name,
    required this.type,
    required this.items,
  });

  bool get hasTitle => name.isNotEmpty;

  bool get isSelected =>
      items.isNotEmpty && items.every((item) => item.isSelected);

  CartSeller copyWith({List<CartItem>? items}) => CartSeller(
    id: id,
    name: name,
    type: type,
    items: items ?? this.items,
  );
}
