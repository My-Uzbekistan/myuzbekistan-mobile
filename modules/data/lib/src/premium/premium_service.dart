import 'package:data/src/premium/models/premium_access/premium_access_response.dart';
import 'package:data/src/premium/models/premium_plans/premium_plans_response.dart';
import 'package:data/src/premium/models/premium_status/premium_status_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:shared/shared.dart';


part 'premium_service.g.dart';

@injectable
@RestApi()
abstract class PremiumService{

  @factoryMethod
  factory PremiumService(Dio dio) = _PremiumService;

  @GET("premium/plans")
  Future<List<PremiumPlansResponse>> plans();

  @GET("premium/check-access/{catalogId}")
  Future<PremiumAccessResponse> checkAccess(@Path("catalogId") int catalogId);

  @GET("premium/status")
  Future<PremiumStatusResponse> status();

  @POST("premium/cancel")
  Future<dynamic> cancel();

  @POST("premium/subscribe/{planId}")
  Future<dynamic> subscribe(@Path("planId") int planId);
}
