import 'payment_action_key.dart';

class PaymentAction {
  final PaymentActionKey? key;
  final String title;
  final int id;

  PaymentAction({required this.key, required this.title, required this.id});
}
