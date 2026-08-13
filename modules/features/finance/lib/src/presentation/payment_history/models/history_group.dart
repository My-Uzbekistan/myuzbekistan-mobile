import 'package:finance/src/presentation/payment_history/models/history_item_ui_model.dart';

class HistoryGroup {
  final String title;
  final List<HistoryItemUiModel> items;

  const HistoryGroup({required this.title, required this.items});
}
