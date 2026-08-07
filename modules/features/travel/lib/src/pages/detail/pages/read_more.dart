import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class ReadMore extends StatelessWidget {
  final String title;
  final String content;

  const ReadMore({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.appColors.background.elevation1,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.88,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Row(
              children: [
                const Expanded(child: SizedBox()),
                RoundedButton.closeButton(onPressed: () => context.pop()),
              ],
            ),
          ),
          Flexible(
            child: SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(
                16,
                8,
                16,
                MediaQuery.of(context).padding.bottom + 16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 16,
                children: [Text(title).h2(), Text(content).bodyLg()],
              ),
            ),
          ),
        ],
        ),
      ),
    );
  }
}
