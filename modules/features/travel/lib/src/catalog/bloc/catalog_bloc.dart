import 'dart:async';

import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'catalog_event.dart';

part 'catalog_state.dart';

part 'catalog_bloc.freezed.dart';

@injectable
class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  final Repository _repository;
  StreamSubscription? _streamSubscription;
  final AppStatusChangeListeners _appLocaleChangeListener;

  CatalogBloc(this._repository, this._appLocaleChangeListener)
    : super(CatalogState.loading()) {
    on<_CatalogFetchEvent>(_fetch);
    on<_CatalogLoadedData>(_loadedData);
    add(CatalogEvent.fetch());
    init();
  }

  init() {
    _streamSubscription?.cancel();
    _streamSubscription = _appLocaleChangeListener.refreshListener.listen((
      event,
    ) {
      add(CatalogEvent.fetch());
    });
  }

  Future<void> _fetch(
    _CatalogFetchEvent event,
    Emitter<CatalogState> emit,
  ) async {
    try {
      final items = await _repository.getCatalog();
      add(CatalogEvent.loadedData(items: items));
    } catch (e) {
      emit(CatalogState.error());
    }
  }

  void _loadedData(_CatalogLoadedData event, Emitter<CatalogState> emit) async {
    emit(CatalogState.loaded(items: event.items));
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
