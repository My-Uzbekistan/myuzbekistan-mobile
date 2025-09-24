import 'package:component_res/component_res.dart';
import 'package:flutter/cupertino.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/detail/widget/underline_button.dart';

import 'items_title.dart';

class DescriptionWidget extends StatelessWidget {
  final String title;
  final String? description;

  const DescriptionWidget({super.key, required this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final text = description.orEmpty().replaceAll("\n", " ");
          final maxWidth = constraints.maxWidth; // shu joyda aniqlaymiz
          bool moreThan3 = TextLineChecker.isMoreThan3Lines(
            text,
            maxWidth,
            TextStyle(fontSize: 16),
          );
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ItemsTitle(title: title),
              Text(
                text.trim(),
                maxLines: 3,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ).bodyLg(),
              if (moreThan3)
                DetailUnderLineButton(
                  actionText: context.localization.readMore,
                  onTap: () {
                    context.pushNamed(
                      AppNavPath.travel.detailReadMore.name,
                      queryParameters: {"title": title, "content": description},
                    );
                  },
                ),
            ],
          );
        },
      ),
    );
  }
}
