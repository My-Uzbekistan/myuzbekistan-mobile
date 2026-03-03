import 'dart:io';

import 'package:domain/domain.dart';
import 'package:shared/shared.dart';



class AppInterceptor extends Interceptor {
  final AppPreference preference;
  final SecurityStorage securityStorage;

  AppInterceptor(this.preference, this.securityStorage);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {

    options.queryParameters.addAll({
      "culture": preference.getLocale()?.culture??"en-US",
      "platform": Platform.isIOS ? "ios" : "android"
    });

    final locationManager = LocationManager();
    if(locationManager.getCurrentPosition()!=null){
      options.queryParameters.addAll({
        "lat": locationManager.getCurrentPosition()!.latitude,
        "lon": locationManager.getCurrentPosition()!.longitude,
      });
    }
    return handler.next(options);
  }

  }



class ErrorInterceptor extends Interceptor {


  ErrorInterceptor();


@override
void onError(DioException err, ErrorInterceptorHandler handler) {
  final response = err.response;
  if (response != null &&
      response.data is Map<String, dynamic>) {
    try {
      final data = response.data as Map<String, dynamic>;

      final appException = AppException.fromJson(data);
      handler.next(err.copyWith(error: appException));
      return;
    } catch (e) {
      // Parsingda xatolik bo‘lsa fallback ishlaydi

    }
  }

  final unknown = AppException.unknown(err.message);
  handler.next(err.copyWith(error: unknown));
}
}