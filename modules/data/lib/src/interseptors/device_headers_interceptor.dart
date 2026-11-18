import 'package:shared/shared.dart';

class DeviceHeadersInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers.addAll(await DeviceInfoManager().headers());
    handler.next(options);
  }
}
