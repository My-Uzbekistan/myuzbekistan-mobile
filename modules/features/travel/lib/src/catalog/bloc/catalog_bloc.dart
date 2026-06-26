import 'dart:async';

import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'catalog_event.dart';

part 'catalog_state.dart';

part 'catalog_bloc.freezed.dart';

@injectable
class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  final Repository _repository;
  final PremiumRepository _premiumRepository;
  StreamSubscription? _streamSubscription;
  final AppStatusChangeListeners _appLocaleChangeListener;

  CatalogBloc(
    this._repository,
    this._premiumRepository,
    this._appLocaleChangeListener,
  ) : super(CatalogState.loading()) {
    on<_CatalogFetchEvent>(_fetch);
    on<_CatalogLoadedData>(_loadedData);
    on<_PremiumCard>(_premiumCard);
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

  Future<void> _premiumCard(
    _PremiumCard event,
    Emitter<CatalogState> emit,
  ) async {
    final currentItems = state.maybeWhen(
      loaded: (items, _, __) => items,
      orElse: () => <CatalogItemModel>[],
    );
    try {
      final access = await _premiumRepository.checkAccess(event.id);
      final status = switch (access.reason) {
        PremiumAccessReason.Premium => PremiumAccessStatus.allowed,
        PremiumAccessReason.FreeLimit => PremiumAccessStatus.limitReached,
        _ => PremiumAccessStatus.premiumRequired,
      };
      emit(
        CatalogState.loaded(
          items: currentItems,
          accessStatus: status,
          pendingItem: event.item,
        ),
      );
      emit(CatalogState.loaded(items: currentItems));
    } catch (_) {
      emit(
        CatalogState.loaded(
          items: currentItems,
          accessStatus: PremiumAccessStatus.allowed,
          pendingItem: event.item,
        ),
      );
      emit(CatalogState.loaded(items: currentItems));
    }
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
