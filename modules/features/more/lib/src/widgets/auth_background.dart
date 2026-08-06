import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

/// Splash ekrandagidek orqa fonda tasodifiy rasm ko'rsatuvchi umumiy widget.
///
/// Rasm har safar dastur ishga tushganda bir marta tanlanadi va til tanlash
/// hamda welcome ekranlari **bir xil** rasmni ko'rsatadi — shu tufayli ekranlar
/// orasidagi o'tishda fon qimirlamaydi/o'zgarmaydi, faqat ustidagi kontent
/// animatsiya bo'ladi. Rasm paydo bo'lish (fade-in) animatsiyasi yo'q.
///
/// Pastki qismga qorong'i tint va [SoftEdgeBlur] (component_res dagi blur)
/// qo'llanadi — matn/tugmalar rasm ustida yaxshi o'qiladi.
class AuthBackground extends StatelessWidget {
  const AuthBackground({super.key, this.child});

  /// Fon ustida ko'rsatiladigan kontent (sarlavha, tugmalar va h.k.).
  final Widget? child;

  /// Dastur ishga tushganda bir marta tanlanadigan, til va welcome ekranlari
  /// o'rtasida bo'lishiladigan tasodifiy fon rasmi.
  static final AssetGenImage backgroundImage = SplashBackground.random();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      fit: StackFit.expand,
      children: [
        SoftEdgeBlur(
          edges: [
            EdgeBlur(
              type: EdgeType.bottomEdge,
              size: screenHeight * 0.5,
              sigma: 17,
              tileMode: TileMode.mirror,
              tintColor: Colors.black.withValues(alpha: 0.48),
              controlPoints: [
                ControlPoint(
                  position: 0.75,
                  type: ControlPointType.visible,
                ),
                ControlPoint(
                  position: 1,
                  type: ControlPointType.transparent,
                ),
              ],
            ),
          ],
          child: Stack(
            fit: StackFit.expand,
            children: [
              backgroundImage.image(fit: BoxFit.cover),
              Container(color: Colors.black.withValues(alpha: 0.16)),
            ],
          ),
        ),
        if (child != null) child!,
      ],
    );
  }
}
