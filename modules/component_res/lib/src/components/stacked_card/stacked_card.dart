import 'dart:math';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class StackedCard extends StatelessWidget {
  final List<String> avatars;
  final Widget? title;
  final Widget? caption;

  const StackedCard(
      {super.key, this.title, this.caption, required this.avatars});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(24),
       ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  title??SizedBox(),
                  SizedBox(height: 2),
                 caption??SizedBox()
                ],
              ),
            ),
            SizedBox(width: 16),
            AvatarStack(
              avatars: avatars,
            ), // Matn va AvatarStack orasiga masofa qo‘shish
          ],
        ),
      ),
    ).shadow(context,);
  }
}

class AvatarStack extends StatelessWidget {
  final List<String> avatars;

  const AvatarStack({required this.avatars});

  @override
  Widget build(BuildContext context) {
    final maxWidth = switch (avatars.length) {
      1 => 60.0,
      2 => 90.0,
      _ => 120.0,
    };

    return ConstrainedBox(
      constraints:
          BoxConstraints(maxWidth: maxWidth, minHeight: 60), // Stack kengligi
      // Stack balandligi
      child: Stack(
        alignment: Alignment.centerRight,
        children: List.generate(min(avatars.length, 3), (index) {
          int reversedIndex =
              avatars.length - index - 1; // Elementlarni teskari joylashtirish
          return Positioned(
            left: reversedIndex * 30.0,
            top: 0,
            bottom: 0, // Har bir keyingi avatar orqaga ketadi
            child: AppAvatar(
              sizeType: AvatarSizeType.medium,
              showBorder: true,
              imageUrl: avatars[reversedIndex],
            ),
          );
        }),
      ),
    );
  }
}
