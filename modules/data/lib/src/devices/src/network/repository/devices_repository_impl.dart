import 'package:data/src/devices/src/network/api/devices_api_service.dart';
import 'package:data/src/utils/generic/generics.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

@Injectable(as: DevicesRepository)
class DevicesRepositoryImpl extends DevicesRepository {
  final DevicesApiService service;

  DevicesRepositoryImpl(this.service);

  @override
  Future<List<DeviceSession>> sessions() {
    return service.sessions().call(
      (items) => items.map((e) => e.toDomain()).toList(),
    );
  }

  @override
  Future<dynamic> terminateSession({required int sessionId}) {
    return service.terminateSession(sessionId).call();
  }

  @override
  Future<dynamic> terminateOtherSessions() {
    return service.terminateOtherSessions().call();
  }
}
