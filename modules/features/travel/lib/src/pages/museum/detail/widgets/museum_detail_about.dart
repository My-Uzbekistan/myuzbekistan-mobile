import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';
import 'package:shared/shared.dart';

class MuseumDetailAbout extends HookWidget {
  const MuseumDetailAbout({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    final isExpanded = useState(false);
    final text = _plainText(description);

    return LayoutBuilder(
      builder: (context, constraints) {
        final isTruncated = TextLineChecker.isMoreThan3Lines(
          text,
          constraints.maxWidth,
          CustomTypography.bodyLg,
        );

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              maxLines: isExpanded.value ? null : 3,
              softWrap: true,
              overflow:
                  isExpanded.value ? TextOverflow.clip : TextOverflow.ellipsis,
            ).bodyLg(color: context.appColors.textIconColor.primary),
            if (isTruncated && !isExpanded.value)
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: AppActionButton(
                  type: ActionButtonType.secondary,
                  actionText: context.localization.museum_detail_show_more,
                  onPressed: () => isExpanded.value = true,
                ),
              ),
          ],
        );
      },
    );
  }

  String _plainText(String html) {
    return html
        .replaceAll(RegExp(r"<br\s*/?>", caseSensitive: false), "\n")
        .replaceAll(RegExp(r"</p>", caseSensitive: false), "\n")
        .replaceAll(RegExp(r"<[^>]*>"), "")
        .replaceAll("&nbsp;", " ")
        .replaceAll("&amp;", "&")
        .replaceAll("&quot;", "\"")
        .replaceAll(RegExp(r"\n{2,}"), "\n")
        .replaceAll("\n", " ")
        .trim();
  }
}
