import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

/// Yorliq (kulrang, kichik) + qiymat (qalin) — vertikal joylashuv.
/// Screenshot'dagi barcha "maydon" qatorlari shu ko'rinishda.
class LabeledValue extends StatelessWidget {
  final String label;
  final String? value;

  const LabeledValue({super.key, required this.label, this.value});

  @override
  Widget build(BuildContext context) {
    final text = (value == null || value!.trim().isEmpty) ? "—" : value!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 4,
      children: [
        Text(label).bodySm(color: context.appColors.textIconColor.secondary),
        Text(text).labelLg(),
      ],
    );
  }
}
