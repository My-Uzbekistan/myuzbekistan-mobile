import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

/// Shartnoma detalidagi bo'lim — sarlavha + (ixtiyoriy) yig'iluvchi tarkib.
///
/// [collapsible] `true` bo'lsa o'ng tomonda chevron chiqadi va bosilganda
/// tarkib animatsiya bilan ochilib-yopiladi. `false` bo'lsa oddiy sarlavhali
/// guruh sifatida chiziladi.
class CollapsibleSection extends StatefulWidget {
  final String title;
  final Widget child;
  final bool collapsible;
  final bool initiallyExpanded;

  const CollapsibleSection({
    super.key,
    required this.title,
    required this.child,
    this.collapsible = true,
    this.initiallyExpanded = true,
  });

  @override
  State<CollapsibleSection> createState() => _CollapsibleSectionState();
}

class _CollapsibleSectionState extends State<CollapsibleSection> {
  late bool _expanded = widget.initiallyExpanded;

  void _toggle() {
    if (!widget.collapsible) return;
    setState(() => _expanded = !_expanded);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: _toggle,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  widget.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ).h3(),
              ),
              if (widget.collapsible)
                AnimatedRotation(
                  turns: _expanded ? 0.5 : 0,
                  duration: const Duration(milliseconds: 200),
                  child: Icon(
                    Icons.keyboard_arrow_up,
                    color: context.appColors.textIconColor.secondary,
                  ),
                ),
            ],
          ),
        ),
        AnimatedCrossFade(
          duration: const Duration(milliseconds: 200),
          crossFadeState: (_expanded || !widget.collapsible)
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          firstChild: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: widget.child,
          ),
          secondChild: const SizedBox(width: double.infinity),
        ),
      ],
    );
  }
}
