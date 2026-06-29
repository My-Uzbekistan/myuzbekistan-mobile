import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'premium_event.dart';

part 'premium_state.dart';

part 'premium_bloc.freezed.dart';

@injectable
class PremiumBloc extends Bloc<PremiumEvent, PremiumState> {
  final PremiumRepository _repository;

  PremiumBloc(this._repository) : super(PremiumState()) {
    on<_Plans>(_plans);
    on<_SelectPlan>(_selectPlan);
  }

  void _plans(_Plans event, Emitter<PremiumState> emitter) async {
    try {
      final result = await _repository.plans();
      emitter(
        state.copyWith(
          plans: result,
          isLoading: false,
          item: state.item ?? result.firstOrNull,
        ),
      );
    } catch (e) {
      logger.e("Premium Plan Error $e");
      emitter(state.copyWith(isLoading: false));
    }
  }

  void _selectPlan(_SelectPlan event, Emitter<PremiumState> emitter) async {
    emitter(state.copyWith(item: event.item));
  }
}
