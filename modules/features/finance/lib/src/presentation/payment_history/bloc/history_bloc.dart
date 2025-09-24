import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import '../widget/item.dart';

part 'history_event.dart';

part 'history_state.dart';

part 'history_bloc.freezed.dart';

@injectable
class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  final FinanceRepository _repository;

  HistoryBloc(this._repository) : super(HistoryState.loading()) {
    on<HistoryLoadNextEvent>(_loadNext);
  }

  Future<void> _loadNext(
    HistoryLoadNextEvent event,
    Emitter<HistoryState> emit,
  ) async {
    try {
      final result = await _repository.paymentHistory();

      final historyItems =
          result
              .filter((e) => e.date != null)
              .groupBy((e) {
                final dt = e.date!;
                return DateTime(dt.year, dt.month, dt.day);
              })
              .entries
              .map(
                (entry) => HistoryGroup(
                  title: entry.key.toFormatDMMM(),
                  items:
                      entry.value.map((item) {
                        final merchant = item.merchant;
                        return HistoryItemUiModel(
                          id: item.paymentId,
                          title: merchant?.name.orEmpty() ?? "",
                          trailing:
                              "-${item.amount?.amountFormatted().orEmpty()}",
                          iconUrl: merchant?.icon,
                          subTitle: merchant?.type,
                        );
                      }).toList(),
                ),
              )
              .toList();
      emit(HistoryState.loaded(items: historyItems));
    } catch (e) {}
  }
}
