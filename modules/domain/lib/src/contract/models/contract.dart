import 'contract_good.dart';
import 'contract_good_spec.dart';
import 'contract_product.dart';
import 'contract_product_property.dart';

/// Shartnoma detali — screenshot'dagi barcha bo'limlarni qamrab oladi.
class Contract {
  /// Sarlavha: "Shartnoma raqami №{number}".
  final String? number;

  // --- Shartnoma ma'lumotlari ---
  final DateTime? contractDate;
  final String? currency;
  final DateTime? discussionEndDate;
  final double? totalAmount;
  final DateTime? endDate;
  final double? oqsAmount;
  final String? basis;
  final double? advanceAmount;
  final String? region;

  // --- To'lov shartlari (kunlarda) ---
  final int? advancePaymentDay;
  final int? paymentPeriodDays;
  final int? deliveryPeriodDays;

  // --- Ro'yxatlar ---
  final List<ContractProduct> products;
  final List<ContractProductProperty> productProperties;
  final List<ContractGood> goods;

  // --- To'lov haqida ma'lumot (ish kunlarida) ---
  final int? paymentInfoDeliveryDays;
  final int? paymentInfoPrepaymentDays;
  final int? advancePercent;
  final int? paymentInfoPaymentDays;

  // --- Buyurtmachining manzili ---
  final String? customerAddress;

  const Contract({
    this.number,
    this.contractDate,
    this.currency,
    this.discussionEndDate,
    this.totalAmount,
    this.endDate,
    this.oqsAmount,
    this.basis,
    this.advanceAmount,
    this.region,
    this.advancePaymentDay,
    this.paymentPeriodDays,
    this.deliveryPeriodDays,
    this.products = const [],
    this.productProperties = const [],
    this.goods = const [],
    this.paymentInfoDeliveryDays,
    this.paymentInfoPrepaymentDays,
    this.advancePercent,
    this.paymentInfoPaymentDays,
    this.customerAddress,
  });

  /// Vaqtinchalik namuna ma'lumot — screenshot'dagi qiymatlar bilan.
  /// Backend endpoint ulangach [ContractDetailBloc] dan olib tashlanadi.
  factory Contract.sample() => Contract(
        number: "76-2026-ENG",
        contractDate: DateTime(2026, 8, 3),
        currency: "UZS",
        discussionEndDate: DateTime(2026, 8, 5, 14, 44),
        totalAmount: 26071302,
        endDate: DateTime(2026, 7, 21, 18, 7, 33),
        oqsAmount: 2793353.79,
        basis:
            "Прямые договора (ЗРУ-684 Ст71 пункт 2) Указу (Фармон) Президента "
            "РУз 23.08.2023 йилдаги ПФ 151 2 илова 5 бандига асосан",
        advanceAmount: 7821390.6,
        region: "Toshkent shahri",
        advancePaymentDay: 3,
        paymentPeriodDays: 30,
        deliveryPeriodDays: 30,
        products: const [
          ContractProduct(
            name: "Bino va inshootlarning energiya samaradorligi holatini "
                "baholash xizmati",
            code: "71.12.11.100-00003",
            quantity: 1,
            price: 26071302,
            totalAmount: 26071302,
            advance: null,
            description: "Qo'shimcha ma'lumot uchun: 94 298 40 00",
          ),
        ],
        productProperties: const [
          ContractProductProperty(
            name: "Bino va inshootlarning energiya samaradorligi holatini "
                "baholash xizmati - 71.12.11.100-00003",
            unitOfMeasure: "shartli birlik",
          ),
        ],
        goods: const [
          ContractGood(
            name: "Tantanali tadbirlarni tashkillashtirish va o'tkazish xizmati",
            startingPricePerUnit: 1215771910,
            totalPrice: 315000,
            quantity: 1,
            spec: ContractGoodSpec(
              unitOfMeasure: "dona",
              type: "Festival",
              description:
                  "LED konsol chiroq sovuq oq yorug'lik COBRA LED 150 W 6000K1",
            ),
          ),
        ],
        paymentInfoDeliveryDays: 1,
        paymentInfoPrepaymentDays: 5,
        advancePercent: 30,
        paymentInfoPaymentDays: 10,
        customerAddress: "Toshkent shahri",
      );
}
