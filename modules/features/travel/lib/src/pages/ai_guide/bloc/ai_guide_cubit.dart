import 'dart:async';

import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'ai_guide_state.dart';

part 'ai_guide_cubit.freezed.dart';

@LazySingleton()
class AiGuideCubit extends Cubit<AiGuideState> {
  final Repository _repository;
  StreamSubscription? _refreshSubscription;
  Future<void>? _loading;

  AiGuideCubit(this._repository, AppStatusChangeListeners listeners)
    : super(AiGuideState()) {
    _refreshSubscription = listeners.refreshListener.listen(
      (_) => loadAiGuideLink(),
    );
  }

  Future<void> loadAiGuideLink() {
    return _loading ??= _load().whenComplete(() => _loading = null);
  }

  Future<void> _load() async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      emit(state.copyWith(url: await _repository.loadAiGuideLink()));
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
    emit(state.copyWith(isLoading: false));
  }

  @override
  Future<void> close() {
    _refreshSubscription?.cancel();
    return super.close();
  }
}
