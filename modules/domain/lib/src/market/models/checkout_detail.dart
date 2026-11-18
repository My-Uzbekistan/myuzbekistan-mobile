import 'checkout_detail_key.dart';

class CheckoutDetail {
  final CheckoutDetailKey? key;
  final String title;
  final String value;

  CheckoutDetail({required this.key, required this.title, required this.value});

  bool get isFilled => value.isNotEmpty;
}
