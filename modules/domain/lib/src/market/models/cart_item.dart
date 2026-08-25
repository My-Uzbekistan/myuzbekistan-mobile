class CartItem {
  final int productId;
  final String name;
  final String categoryName;
  final String photo;
  final int price;
  final int quantity;
  final int available;
  final bool isSelected;

  CartItem({
    required this.productId,
    required this.name,
    required this.categoryName,
    required this.photo,
    required this.price,
    required this.quantity,
    required this.available,
    required this.isSelected,
  });

  int get total => price * quantity;

  bool get canIncrease => quantity < available;

  bool get isLastUnit => quantity <= 1;

  CartItem copyWith({int? quantity, bool? isSelected}) => CartItem(
    productId: productId,
    name: name,
    categoryName: categoryName,
    photo: photo,
    price: price,
    quantity: quantity ?? this.quantity,
    available: available,
    isSelected: isSelected ?? this.isSelected,
  );
}
