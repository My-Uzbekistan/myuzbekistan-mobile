import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'services_cubit.freezed.dart';

part 'services_state.dart';

/// "Сервисы" to'liq ro'yxatini yuklaydi (catalog-v3).
///
/// [ServicesSheet] ochilganda alohida so'rov yuboriladi — bosh sahifa
/// ([HomeBloc]) ma'lumotidan mustaqil.
@injectable
class ServicesCubit extends Cubit<ServicesState> {
  final Repository _repository;

  ServicesCubit(this._repository) : super(const ServicesState());

  Future<void> load() async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      final services = await _repository.getCatalogV3(page: 1, pageSize: 50);
      emit(state.copyWith(services: services, isLoading: false));
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString(), isLoading: false));
    }
  }
}
