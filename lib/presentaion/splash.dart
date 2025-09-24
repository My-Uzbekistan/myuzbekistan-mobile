import 'dart:math';

import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:navigation/navigation.dart';
import 'package:uzbekistan_travel/di/injection.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final images = [
      Assets.splashSplash1,
      Assets.splashSplash2,
      Assets.splashSplash3,
      Assets.splashSplash4,
    ];
    final imagePath = useState<String>("");
    final opacity = useState<double>(0);
    useEffect(() {
      // 1️⃣ Bir marta random tanlash
      getIt<SecurityStorage>().clearPinVerified();
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      imagePath.value = images[Random().nextInt(images.length)];

      // 2️⃣ Fade boshlash
      Future.delayed(const Duration(milliseconds: 100), () {
        opacity.value = 1;
      });
      Future.delayed(const Duration(milliseconds: 1500), () {
        context.travel.goMain(); // go_router bilan ishlash
      });
      return null;
    }, []);

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: context.systemUiOverlyStyle.copyWith(
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarContrastEnforced: false,
        systemNavigationBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: AnimatedOpacity(
          opacity: opacity.value,
          curve: Curves.easeInToLinear,
          duration: const Duration(milliseconds: 800),
          child: Stack(
            children: [
              Positioned.fill(child: imagePath.value.toImage(fit: BoxFit.cover)),
              Center(child: Assets.logoMyuzbLogo.toSvgImage(fit: BoxFit.contain))
            ],
          ),
        ),
      ),
    );
  }
}
