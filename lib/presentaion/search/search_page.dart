import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body: Column(
        children: [
          SearchInputField(),
          Expanded(child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return SearchCell();
              }))
        ],
      ),
    );
  }
}

class SearchCell extends StatelessWidget {
  final EdgeInsets contentPadding;
  const SearchCell(
      {super.key,
      this.contentPadding = const EdgeInsets.all(16)});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: contentPadding,
      child: Row(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppImageCard.medium(),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 4,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Title",
                    style: CustomTypography.labelLg,
                  ),
                  Text(
                    "Address",
                    style: CustomTypography.bodySm.copyWith(
                        color: context.appColors.textIconColor.secondary),
                  ),
                ],
              ),
              PriceCategory(),
              AppBadge()
            ],
          )),
          Text(
            "4.5",
            style: CustomTypography.labelSm
                .copyWith(color: context.appColors.brand),
          )
        ],
      ),
    );
  }
}
