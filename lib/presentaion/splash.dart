import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:uzbekistan_travel/core/navigation/navigation_extensions.dart';

class SplashScreen extends HookWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      Future.delayed(const Duration(milliseconds: 500), () {
        context.goMain(); // go_router bilan ishlash
      });
      return null;
    }, []);

    return Scaffold(
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: Theme.of(context).brightness == Brightness.dark
                ? Assets.logoDarkFullLogo.toSvgImage(fit: BoxFit.contain)
                : Assets.logoLightFullLogo.toSvgImage(fit: BoxFit.contain),
          )),
    );
  }
}
