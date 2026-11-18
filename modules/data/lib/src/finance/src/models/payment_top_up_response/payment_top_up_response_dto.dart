
import 'package:shared/shared.dart';
part 'payment_top_up_response_dto.g.dart';
@JsonSerializable()
class PaymentResultTopUpResponseDto {
  final String paymentId;
  final String? checkUrl;

  PaymentResultTopUpResponseDto({required this.paymentId,this.checkUrl});

  factory PaymentResultTopUpResponseDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentResultTopUpResponseDtoFromJson(json);
}