import 'dart:io';

import 'package:component_res/component_res.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppSwitch extends StatelessWidget {
  final bool isSwitched;
  final ValueChanged<bool>? onChanged;

  const AppSwitch({super.key, this.isSwitched = false, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoSwitch(
            value: isSwitched,
            onChanged: onChanged,
            thumbColor: Colors.white,
            thumbIcon: WidgetStateProperty.all(const Icon(null)),
            trackOutlineColor: WidgetStateProperty.resolveWith((state) {
              return Colors.transparent;
            }),
            trackOutlineWidth: WidgetStateProperty.resolveWith((state) {
              return 0;
            }),
          )
        : MediaQuery.removePadding(
            context: context,
            child: Switch(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              trackColor: WidgetStateProperty.resolveWith((state) {
                if (state.isEmpty) {
                  return context.appColors.fill.tertiary;
                }
                if (setEquals(
                    state, {WidgetState.disabled, WidgetState.selected})) {
                  return context.appColors.colors.green.withValues(alpha: 0.32);
                }
                if (setEquals(state, {WidgetState.selected})) {
                  return context.appColors.colors.green;
                }
                if (setEquals(state, {WidgetState.disabled})) {
                  return context.appColors.fill.tertiary;
                }
                return null;
              }),
              thumbColor: WidgetStateProperty.resolveWith((state) {
                return Colors.white;
              }),
              thumbIcon: WidgetStateProperty.all(const Icon(null)),
              trackOutlineColor: WidgetStateProperty.resolveWith((state) {
                return Colors.transparent;
              }),
              trackOutlineWidth: WidgetStateProperty.resolveWith((state) {
                return 0;
              }),
              value: isSwitched,
              onChanged: onChanged,
            ),
          );
  }

  Color? trackOutlineColor(Set<WidgetState> state, BuildContext context) {
    if (setEquals(state, {WidgetState.disabled})) {
      return context.appColors.fill.tertiary;
    }
    return Colors.transparent;
  }

// Color? thumbColor(Set<WidgetState> state, BuildContext context) {
//   if (setEquals(state, {WidgetState.disabled})) {
//     return Colors.white;
//   }
//   return Colors.transparent;
// }
}
