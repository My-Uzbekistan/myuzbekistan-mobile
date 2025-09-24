import 'package:domain/domain.dart';
import 'package:finance/src/presentation/home/use_case/load_merchant_use_case.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared/shared.dart';

part 'merchants_event.dart';

part 'merchants_state.dart';

part 'merchants_bloc.freezed.dart';

@injectable
class MerchantsBloc extends Bloc<MerchantsEvent, MerchantsState> {
  final LoadMerchantUseCase merchantUseCase;

  MerchantsBloc(this.merchantUseCase) : super(MerchantsState.loading()) {
    init();
  }

  Future<void> init() async {
    try {
      final result = await merchantUseCase.groupByMerchants();
      debugPrint("merchatsresult ${result}");
      emit(MerchantsState.dataState(groups: result));
    } catch (e) {

      debugPrint("Error merchatsresult  $e");
    }
  }
}
