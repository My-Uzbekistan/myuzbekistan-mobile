import 'package:component_res/component_res.dart';
import 'package:flutter/cupertino.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';

import 'section_title.dart';

class DescriptionWidget extends StatelessWidget {
  final String title;
  final String? description;

  const DescriptionWidget({super.key, required this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final text = description.orEmpty().replaceAll("\n", " ");
        final maxWidth = constraints.maxWidth;
        bool moreThan3 = TextLineChecker.isMoreThan3Lines(
          text,
          maxWidth,
          const TextStyle(fontSize: 17),
        );
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionTitle(title),
            Text(
              text.trim(),
              maxLines: 3,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
            ).bodyLg(),
            if (moreThan3)
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: AppActionButton(
                  type: ActionButtonType.secondary,
                  actionText: context.localization.showMore,
                  onPressed: () {
                    context.pushNamed(
                      AppNavPath.travel.detailReadMore.name,
                      queryParameters: {"title": title, "content": description},
                    );
                  },
                ),
              ),
          ],
        );
      },
    );
  }
}
