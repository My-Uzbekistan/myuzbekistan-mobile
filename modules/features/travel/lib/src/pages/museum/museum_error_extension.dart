import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

extension MuseumErrorExtension on Object {
  String? errorMessage() {
    final error = this;
    if (error is DioException && error.error is AppException) {
      return (error.error as AppException).message;
    }
    return null;
  }
}
