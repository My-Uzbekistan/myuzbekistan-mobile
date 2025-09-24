import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared/shared.dart';

class PinKeyboard extends StatelessWidget {
  final ValueChanged<String> onChange;
  final VoidCallback? onClear;
  final PinKeyItem? leftButton;
  final PinKeyItem? rightButton;

  const PinKeyboard({
    super.key,
    required this.onChange,
    this.onClear,
    this.leftButton,
    this.rightButton,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ...List.generate(9, (index) => index + 1)
              .chunked(3) // har 3 ta elementni bitta rowga ajratish
              .map(
                (row) => Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 8,
                  children:
                      row
                          .map(
                            (e) => PinKeyItem(
                              child: Text(e.toString()).h1(),
                              onTap: () {
                                onChange.call(e.toString());
                              },
                            ),
                          )
                          .toList(),
                ),
              ),
          Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 8,
            children: [
              leftButton ?? PinKeyItem(child: SizedBox.shrink()),
              PinKeyItem(
                child: Text("0").h1(),
                onTap: () {
                  onChange.call("0");
                },
              ),
              rightButton ??
                  PinKeyItem(
                    onTap: () {
                      onClear?.call();
                    },
                    child: Assets.svgIconDeleteBackFill.toSvgImage(
                      tintColor: context.appColors.textIconColor.secondary,
                    ),
                  ),
            ],
          ),
        ],
      ),
    );
  }
}

class PinKeyItem extends StatelessWidget {
  final Widget child;
  final GestureTapCallback? onTap;

  const PinKeyItem({super.key, required this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap:
          onTap != null
              ? () {
                HapticFeedback.selectionClick();
                onTap?.call();
              }
              : null,
      child: SizedBox(height: 80, width: 80, child: Center(child: child)),
    );
  }
}
