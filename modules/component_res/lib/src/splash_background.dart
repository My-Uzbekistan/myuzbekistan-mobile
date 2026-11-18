import 'dart:math';

import '../generated/assets.dart';

/// Splash, kirish (auth) va bosh sahifa headeri kabi joylardagi orqa fon uchun
/// tasodifiy rasm tanlaydigan yordamchi.
///
/// [random] har chaqirilganda tasodifiy splash rasmini qaytaradi. Bir seans
/// (app ochilishi) davomida barqaror rasm kerak bo'lsa — masalan build har
/// safar chaqirilganda rasm sakramasligi uchun — chaqiruvchi natijani
/// `static final` da keshlab qo'yishi kerak.
abstract final class SplashBackground {
  static final List<AssetGenImage> images = [
    Assets.splash.splash1,
    Assets.splash.splash2,
    Assets.splash.splash3,
    Assets.splash.splash4,
    Assets.splash.splash5,
  ];

  static final Random _random = Random();

  /// Tasodifiy splash fon rasmi.
  static AssetGenImage random() => images[_random.nextInt(images.length)];
}
