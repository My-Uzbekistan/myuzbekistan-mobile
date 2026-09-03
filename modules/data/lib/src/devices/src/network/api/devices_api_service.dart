import 'package:data/src/devices/src/models/device_session/device_session_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:shared/shared.dart';

part 'devices_api_service.g.dart';

@injectable
@RestApi()
abstract class DevicesApiService {
  @factoryMethod
  factory DevicesApiService(Dio dio) = _DevicesApiService;

  @GET("devices/sessions")
  Future<List<DeviceSessionDto>> sessions();

  @DELETE("devices/sessions/{sessionId}")
  Future<dynamic> terminateSession(@Path("sessionId") int sessionId);

  @DELETE("devices/sessions/others")
  Future<dynamic> terminateOtherSessions();
}
