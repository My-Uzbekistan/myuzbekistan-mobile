import 'package:core/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';

part 'home_bloc_event.dart';

part 'home_bloc_state.dart';

@injectable
class HomeBloc extends Bloc<HomeBlocEvent, HomeBlocState> {
  final Repository _repository;
  HomeBloc(Repository rp)
      : _repository = rp,
        super(HomeBlocState.loading()) {
    on<_HomeBlocInitialEvent>((event, emit) async {
      var result = await Future.wait(
          [_repository.loadCategories(), _repository.loadContents()]);

      final categories = result[0] as List<Categories>;
      final placeCategories = result[1] as List<PlaceCategories>;
      emit(HomeBlocState.dataState(
          categories: categories, placeCategories: placeCategories));
    });
  }
}
