import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:uzbekistan_travel/presentaion/detail/widget/items_title.dart';

class FilesGroup extends StatelessWidget {

  const FilesGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ItemsTitle(title: "Menu"),

        Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: SizedBox(
            height: 112,
            child: ListView.separated(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return MenuItem(title: "Show menu ");
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
