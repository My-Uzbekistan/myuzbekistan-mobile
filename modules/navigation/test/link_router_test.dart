import 'package:flutter_test/flutter_test.dart';
import 'package:navigation/navigation.dart';

void main() {
  test('ichki host web havolasi route location ga aylanadi', () {
    expect(
      AppLinkRouter.locationOf(
        Uri.parse('https://myuz.uz/market/product?productId=123'),
      ),
      '/market/product?productId=123',
    );
    expect(
      AppLinkRouter.locationOf(
        Uri.parse('https://www.myuzb.uz/detail?contentId=1828'),
      ),
      '/detail?contentId=1828',
    );
    expect(
      AppLinkRouter.locationOf(Uri.parse('https://myuz.uz/pay/1')),
      '/pay/1',
    );
  });

  test('myuz sxemasi ham bir xil location beradi', () {
    expect(
      AppLinkRouter.locationOf(Uri.parse('myuz://city?cityId=5')),
      '/city?cityId=5',
    );
    expect(
      AppLinkRouter.locationOf(Uri.parse('myuz:///city?cityId=5')),
      '/city?cityId=5',
    );
  });

  test('oxiridagi slash olib tashlanadi', () {
    expect(
      AppLinkRouter.locationOf(
        Uri.parse('https://myuz.uz/detail/?contentId=1828'),
      ),
      '/detail?contentId=1828',
    );
  });

  test('ichki yo\'l o\'zgarmaydi', () {
    expect(
      AppLinkRouter.locationOf(Uri.parse('/museum/detail?museumId=abc')),
      '/museum/detail?museumId=abc',
    );
  });

  test('tashqi va bo\'sh havolalar null', () {
    expect(AppLinkRouter.locationOf(null), isNull);
    expect(AppLinkRouter.locationOf(Uri.parse('https://evil.com/detail')), isNull);
    expect(AppLinkRouter.locationOf(Uri.parse('https://myuz.uz')), isNull);
    expect(AppLinkRouter.locationOf(Uri.parse('https://myuz.uz/')), isNull);
    expect(AppLinkRouter.locationOf(Uri.parse('tel:+998901234567')), isNull);
    expect(AppLinkRouter.locationOf(Uri.parse('google.com')), isNull);
  });

  test('shareLink ichki host bilan yig\'iladi', () {
    expect(
      AppLinkRouter.shareLink(
        AppNavPath.travel.travelDetail,
        queryParameters: {'contentId': '1828'},
      ),
      'https://myuz.uz/detail?contentId=1828',
    );
  });

  test('auth talab qiladigan route lar belgilangan', () {
    expect(AppNavPath.market.marketOrders.authRequired, isTrue);
    expect(AppNavPath.finance.financePayment.authRequired, isTrue);
    expect(AppNavPath.travel.travelDetail.authRequired, isFalse);
    expect(
      AppNavPath.byName(AppNavPath.market.marketOrderDetail.name)?.authRequired,
      isTrue,
    );
  });
}
