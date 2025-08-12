


import 'package:shared/shared.dart';

import '../../domain.dart';

@injectable
class CurrenciesUseCase{
  final Repository repository;
  CurrenciesUseCase(this.repository);


  Future<List<Currency>> call() async{
    return await repository.loadCurrencies();
  }

}