import 'package:component_res/component_res.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared/shared.dart';

part 'add_card_event.dart';

part 'add_card_state.dart';

part 'add_card_bloc.freezed.dart';

@injectable
class AddCardBloc extends Bloc<AddCardEvent, AddCardState> {
  AddCardBloc() : super(const AddCardState(cardNumber: '', expire: '')) {
    on<_SetDataEvent>(_setData);
  }

  void _setData(_SetDataEvent event, Emitter<AddCardState> emitter) {
    debugPrint("CardNumberStateData  ${event.cardNumber.withOutSpace()}");
    emitter(state.copyWith(
        cardNumber: event.cardNumber.withOutSpace(),
        expire: event.expire,
        cvv: event.cvv,
        alias: event.name));
    }
}
