import 'dart:async';

import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

@LazySingleton()
class AiGuideCubit extends Cubit<String?> {
  final Repository _repository;
  StreamSubscription? _refreshSubscription;

  AiGuideCubit(this._repository, AppStatusChangeListeners listeners)
    : super(null) {
    _refreshSubscription = listeners.refreshListener.listen(
      (_) => loadAiGuideLink(),
    );
  }

  Future<void> loadAiGuideLink() async {
    try {
      emit(await _repository.loadAiGuideLink());
    } catch (e) {
      emit(null);
    }
  }

  @override
  Future<void> close() {
    _refreshSubscription?.cancel();
    return super.close();
  }
}
