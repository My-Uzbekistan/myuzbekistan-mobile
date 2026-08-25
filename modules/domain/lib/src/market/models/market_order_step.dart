import 'market_order_step_key.dart';
import 'market_order_step_state.dart';

class MarketOrderStep {
  final MarketOrderStepKey? key;
  final String title;
  final MarketOrderStepState state;

  MarketOrderStep({
    required this.key,
    required this.title,
    required this.state,
  });
}
