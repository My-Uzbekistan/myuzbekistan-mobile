import 'package:retrofit/retrofit.dart';
import 'package:shared/shared.dart';


part 'premium_service.g.dart';

@injectable
@RestApi()
abstract class PremiumService{

  @factoryMethod
  factory PremiumService(Dio dio) = _PremiumService;

  @GET("premium/plans")
  Future<dynamic> plans();






}