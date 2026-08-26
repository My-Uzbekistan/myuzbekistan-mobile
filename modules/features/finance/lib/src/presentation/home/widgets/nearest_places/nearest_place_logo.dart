import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class NearestPlaceLogo extends StatelessWidget {
  final String? url;

  const NearestPlaceLogo({super.key, this.url});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: SizedBox(
        height: 40,
        width: 40,
        child: RepaintBoundary(
          child: AppNetworkImage(
            url.orEmpty(),
            cacheMaxAge: const Duration(days: 6),
            fit: BoxFit.cover,
            placeholder: ColoredBox(color: context.appColors.fill.tertiary),
          ),
        ),
      ),
    );
  }
}
