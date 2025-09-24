import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

import 'items_title.dart';

class FilesGroup extends StatelessWidget {
  final List<Attachments> attachments;
  final String? title;
  final ValueChanged<String>? onValue;

  const FilesGroup({
    super.key,
    required this.attachments,
    this.title,
    this.onValue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ItemsTitle(title: title ?? ""),
        Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: SizedBox(
            height: 112,
            child: ListView.separated(
              itemCount: attachments.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final attachment = attachments[index];
                return MenuItem(
                  title: attachment.name ?? "",
                  imageUrl: attachment.icon,
                  onTap: () {

                   context.more.pushPdfViewPage(
                     title: attachment.name,
                     pdfUrl: attachment.file
                   );
                  },
                );
              },
              separatorBuilder: (context, index) =>
                  SizedBox(width: 16), // Har bir item orasiga bo'sh joy
            ),
          ),
        )
      ],
    );
  }
}
